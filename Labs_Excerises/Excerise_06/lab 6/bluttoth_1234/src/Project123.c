
#include "xparameters.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xiic.h"
#include "xintc.h"
#include "xil_exception.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "PmodBLE.h"

#ifdef __MICROBLAZE__
#define HOST_UART_DEVICE_ID XPAR_AXI_UARTLITE_0_BASEADDR
#define HostUart XUartLite
#define HostUart_Config XUartLite_Config
#define HostUart_CfgInitialize XUartLite_CfgInitialize
#define HostUart_LookupConfig XUartLite_LookupConfig
#define HostUart_Recv XUartLite_Recv
#define HostUartConfig_GetBaseAddr(CfgPtr) (CfgPtr->RegBaseAddr)
#include "xuartlite.h"
#include "xil_cache.h"
#else
#define HOST_UART_DEVICE_ID XPAR_PS7_UART_1_DEVICE_ID
#define HostUart XUartPs
#define HostUart_Config XUartPs_Config
#define HostUart_CfgInitialize XUartPs_CfgInitialize
#define HostUart_LookupConfig XUartPs_LookupConfig
#define HostUart_Recv XUartPs_Recv
#define HostUartConfig_GetBaseAddr(CfgPtr) (CfgPtr->BaseAddress)
#include "xuartps.h"
#endif






//-------------------------------------------------------


#define XPAR_PMODBLE_0_BASEADDR 0x44a00000
#define XPAR_PMODBLE_0_HIGHADDR 0x44a0ffff

void EnableCaches();
void DisableCaches();
void DemoInitialize();
void DemoRun();
void DemoCleanup();



#define IIC_DEVICE_ID		XPAR_IIC_0_DEVICE_ID
#define INTC_DEVICE_ID		XPAR_INTC_0_DEVICE_ID
#define INTC_IIC_INTERRUPT_ID	XPAR_INTC_0_IIC_0_VEC_ID


#define TEMP_SENSOR_ADDRESS	0x4B /* The actual address is 0x30 */





int TempSensorExample(u16 IicDeviceId, u8 TempSensorAddress,
						  u8 *TemperaturePtr);

static int SetupInterruptSystem(XIic *IicPtr);

static void RecvHandler(void *CallbackRef, int ByteCount);

static void StatusHandler(void *CallbackRef, int Status);


/************************** Variable Definitions **************************/

XIic Iic;		  /* The instance of the IIC device */

XIntc InterruptController;  /* The instance of the Interrupt controller */

volatile struct {
	int  EventStatus;
	int  RemainingRecvBytes;
	int EventStatusUpdated;
	int RecvBytesUpdated;
} HandlerInfo;


int temp_init(){

	int Status;
		u8 TemperaturePtr;

		/*
		 * Call the TempSensorExample.
		 */
		Status =  TempSensorExample(IIC_DEVICE_ID, TEMP_SENSOR_ADDRESS,
		                          &TemperaturePtr);
		xil_printf("Temp :%d °C \r\n",TemperaturePtr);

		if (Status != XST_SUCCESS) {
			xil_printf("IIC tempsensor connection Failed\r\n");
			return XST_FAILURE;
		}

		xil_printf("Successfully ran IIC tempsensor on board\r\n");
		return XST_SUCCESS;


}

int global_temp; // declaring a global variable

int print_temp_reading(){
	int Status;
		u8 TemperaturePtr;

		Status =  TempSensorExample(IIC_DEVICE_ID, TEMP_SENSOR_ADDRESS,
		                          &TemperaturePtr);
		xil_printf("Temp :%d °C \r\n",TemperaturePtr);

		global_temp=TemperaturePtr;  // assigning temp to a gloabal variable to be ablt to access in the esp sending

		if (Status != XST_SUCCESS) {
			xil_printf("IIC tempsensor Failed\r\n");
			return XST_FAILURE;
		                            }

		//xil_printf("Successfully ran IIC tempsensor \r\n");
		//  original    return XST_SUCCESS;
		return TemperaturePtr;
}
PmodBLE myBluetooth;  // Assuming PmodBluetooth is the class for Bluetooth module
HostUart myHostUart;

void DemoInitialize () {
	HostUart_Config *CfgPtr;

	// Enable system caches if required
	EnableCaches();

	PmodBLE_Initialize(&myBluetooth, PMODBLE_0_UART_BASEADDR, PMODBluetooth_GPIO_BASEADDR);
	
	
	CfgPtr = HostUart_LookupConfig(HOST_UART_DEVICE_ID);
	HostUart_CfgInitialize(&myHostUart, CfgPtr, HostUartConfig_GetBaseAddr(CfgPtr));

}


void DemoRun() {
  u8 recv_buffer;
    u32 num_received;
    int i = 0;

    
    xil_printf("Waiting for Bluetooth connection...\n");

 
    while (1) {
    
        num_received = Uart_ReceiveData(&recv_buffer, 1);
        if (num_received > 0) {
            xil_printf("Received from Bluetooth: %c\n", recv_buffer);
        }

        if (i == 100000) {
          
            float temperature = ReadTemperature();
            char tempMsg[50];

         
            sprintf(tempMsg, "Temperature: %.2f°C\r\n", temperature);

            // Send the formatted temperature data over Bluetooth
            Uart_SendData((u8 *)tempMsg, strlen(tempMsg));

            i = 0;
        }

        i++;
    }
}




void DemoCleanup() {
	DisableCaches();
}


int main() {
	DemoInitialize();
	// Oled_Initialize();

	temp_init();

	DemoRun();
	DemoCleanup();
	return 0;
}

void EnableCaches() {
#ifdef __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_DCACHE
   Xil_DCacheEnable();
#endif
#ifdef XPAR_MICROBLAZE_USE_ICACHE
   Xil_ICacheEnable();
#endif
#endif
}

void DisableCaches() {
#ifdef __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_DCACHE
   Xil_DCacheDisable();
#endif
#ifdef XPAR_MICROBLAZE_USE_ICACHE
   Xil_ICacheDisable();
#endif
#endif
}


int TempSensorExample(u16 IicDeviceId, u8 TempSensorAddress, u8 *TemperaturePtr)
{
	int Status;
	static int Initialized = FALSE;
	XIic_Config *ConfigPtr;	/* Pointer to configuration data */

	if (!Initialized) {
		Initialized = TRUE;

		/*
		 * Initialize the IIC driver so that it is ready to use.
		 */
		ConfigPtr = XIic_LookupConfig(IicDeviceId);
		if (ConfigPtr == NULL) {
			return XST_FAILURE;
		}

		Status = XIic_CfgInitialize(&Iic, ConfigPtr,
						ConfigPtr->BaseAddress);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}


		XIic_SetRecvHandler(&Iic, (void *)&HandlerInfo, RecvHandler);
		XIic_SetStatusHandler(&Iic, (void *)&HandlerInfo,
						StatusHandler);

	
		Status = SetupInterruptSystem(&Iic);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
        }
		XIic_Start(&Iic);
		XIic_SetAddress(&Iic, XII_ADDR_TO_SEND_TYPE, TempSensorAddress);
	}


	(void)XIic_MasterRecv(&Iic, TemperaturePtr, 1);


	while(1) {
		if(HandlerInfo.RecvBytesUpdated == TRUE) {
		
			if (HandlerInfo.RemainingRecvBytes == 0) {
				Status = XST_SUCCESS;
			}
			break;
		}

		
		if (HandlerInfo.EventStatusUpdated == TRUE) {
			break;
		}
	}

	return Status;
}



 int SetupInterruptSystem(XIic *IicPtr)  /////  static was removed from before INT
{
	int Status;

	Status = XIntc_Initialize(&InterruptController, INTC_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}



	Status = XIntc_Connect(&InterruptController, INTC_IIC_INTERRUPT_ID,
					XIic_InterruptHandler, IicPtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	Status = XIntc_Start(&InterruptController, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	XIntc_Enable(&InterruptController, INTC_IIC_INTERRUPT_ID);


	Xil_ExceptionInit();

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
				 (Xil_ExceptionHandler) XIntc_InterruptHandler,
				 &InterruptController);


	Xil_ExceptionEnable();

	return XST_SUCCESS;

}



 void RecvHandler(void *CallbackRef, int ByteCount)  /////  static was removed from before INT
{
	HandlerInfo.RemainingRecvBytes = ByteCount;
	HandlerInfo.RecvBytesUpdated = TRUE;
}

/*****************************************************************************/
/**
* This status handler is called asynchronously from an interrupt context and
* indicates that the conditions of the IIC bus changed. This  handler should
* not be called for the application unless an error occurs.
*
* @param	CallBackRef is a pointer to the IIC device driver instance which the
*		handler is being called for.
* @param	Status contains the status of the IIC bus which changed.
*
* @return	None.
*
* @notes	None.
*
****************************************************************************/
 void StatusHandler(void *CallbackRef, int Status) /////  static was removed from before INT
{
	HandlerInfo.EventStatus |= Status;
	HandlerInfo.EventStatusUpdated = TRUE;

}

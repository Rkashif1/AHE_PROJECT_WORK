#ifndef HEALTHMONITOR_H
#define HEALTHMONITOR_H



void ACL_initialize();
void SysUartInit();//note
void BLE_Init();
void HealthMonitorInit();

void GetForce();
void GetTempValue();
void sendFloatBLE(float value,u8 newLine);
void sendStringBLE(char *dataStr);
u8 reqPatData();
void emptyBLEbuf();
void BLEconnectedPrint();
void sendPatData();
void CheckTemp();
void checkFall();
u8 ACL_XYZ_Print(u8 nData);

//functions needed by ACL PMOD and BLE PMOD
void EnableCaches();
void DisableCaches();

#endif // HEALTHMONITOR_H

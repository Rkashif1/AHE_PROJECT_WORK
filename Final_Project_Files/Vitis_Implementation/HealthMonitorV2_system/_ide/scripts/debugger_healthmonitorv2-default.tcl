# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\HealthMonitorSystem\VitisCode\HealthMonitorV2_system\_ide\scripts\debugger_healthmonitorv2-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\HealthMonitorSystem\VitisCode\HealthMonitorV2_system\_ide\scripts\debugger_healthmonitorv2-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Nexys A7 -100T 210292B61B69A" && level==0 && jtag_device_ctx=="jsn-Nexys A7 -100T-210292B61B69A-13631093-0"}
fpga -file C:/HealthMonitorSystem/VitisCode/HealthMonitorV2/_ide/bitstream/Hardware_final_extraMemory.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/HealthMonitorSystem/VitisCode/HealthMonitor/export/HealthMonitor/hw/Hardware_final_extraMemory.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/HealthMonitorSystem/VitisCode/HealthMonitorV2/Debug/HealthMonitorV2.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con

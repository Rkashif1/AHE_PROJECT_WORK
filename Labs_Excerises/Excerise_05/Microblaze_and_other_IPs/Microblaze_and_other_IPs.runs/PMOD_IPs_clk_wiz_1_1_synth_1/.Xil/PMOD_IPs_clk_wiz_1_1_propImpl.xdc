set_property SRC_FILE_INFO {cfile:{c:/Users/Kashif/Desktop/WS2024/EMP 2/LAB/PROJECT/Microblaze_and_other_IPs.gen/sources_1/bd/PMOD_IPs/ip/PMOD_IPs_clk_wiz_1_1/PMOD_IPs_clk_wiz_1_1.xdc} rfile:../../../Microblaze_and_other_IPs.gen/sources_1/bd/PMOD_IPs/ip/PMOD_IPs_clk_wiz_1_1/PMOD_IPs_clk_wiz_1_1.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100

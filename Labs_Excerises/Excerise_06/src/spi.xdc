create_generated_clock -name sclk [get_pins clock_sources/inst/mmcm_adv_inst/CLKOUT2]
 
set_output_delay -clock sclk -max 5.000 [get_ports {spi_sdi[*]}]
set_output_delay -clock sclk -min -5.000 [get_ports {spi_sdi[*]}]
 
set_output_delay -clock sclk -max 5.000 [get_ports {spi_cs]
set_output_delay -clock sclk -min -5.000 [get_ports {spi_cs}]
set_property IOSTANDARD LVCMOS33 [get_ports clk_0]
set_property PACKAGE_PIN W5 [get_ports clk_0]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk_0]
create_generated_clock -name clk_100Mhz -source [get_ports clk_0] -divide_by 2 -add -master_clock sys_clk_pin [get_pins clock/clk_out1]

set_property IOSTANDARD LVCMOS33 [get_ports rst]
set_property PACKAGE_PIN R2 [get_ports rst]

set_property IOSTANDARD LVCMOS33 [get_ports light]
set_property PACKAGE_PIN L1 [get_ports light]


set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_100Mhz]

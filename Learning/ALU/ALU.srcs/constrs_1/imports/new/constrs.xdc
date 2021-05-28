set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]
create_generated_clock -name clk_150Mhz -source [get_ports clk] -multiply_by 3 -divide_by 2 -add -master_clock sys_clk_pin [get_pins C0/clk_out1]

set_property IOSTANDARD LVCMOS33 [get_ports rst]
set_property PACKAGE_PIN R2 [get_ports rst]

set_property PACKAGE_PIN U16 [get_ports test]
set_property IOSTANDARD LVCMOS33 [get_ports test]


-makelib ies_lib/xpm -sv \
  "D:/Program_files/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Program_files/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/Program_files/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../MCU_f.gen/sources_1/ip/ila/sim/ila.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib


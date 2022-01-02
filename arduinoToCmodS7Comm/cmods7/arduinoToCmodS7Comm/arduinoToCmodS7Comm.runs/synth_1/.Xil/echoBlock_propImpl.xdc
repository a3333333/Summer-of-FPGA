set_property SRC_FILE_INFO {cfile:C:/Xilinx/workspace/arduinoToCmodS7Comm/arduinoToCmodS7Comm.srcs/constrs_1/new/echoBlock.xdc rfile:../../../arduinoToCmodS7Comm.srcs/constrs_1/new/echoBlock.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F1    IOSTANDARD LVCMOS33 } [get_ports { blueLED }]; #IO_L10N_T1_34 Sch=led0_b
set_property src_info {type:XDC file:1 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L1    IOSTANDARD LVCMOS33 } [get_ports { fromArduino }]; #IO_L18N_T2_34 Sch=pio[01]
set_property src_info {type:XDC file:1 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N1    IOSTANDARD LVCMOS33 } [get_ports { toArduino }]; #IO_L22N_T3_34 Sch=pio[09]

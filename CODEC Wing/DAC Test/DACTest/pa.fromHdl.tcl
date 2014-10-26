
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name DACTest -dir "D:/GitHub/VHDL_Modules/CODEC Wing/DAC Test/DACTest/planAhead_run_1" -part xc3s500evq100-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Square_wave.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {I2S_Master.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {PCM1754.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Square_wave.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top Square_wave $srcset
add_files [list {Square_wave.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500evq100-4

set projDir "C:/Users/user/Documents/SUTD/term4/test_M4/work/vivado"
set projName "test_M4"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/user/Documents/SUTD/term4/test_M4/work/verilog/au_top_0.v" "C:/Users/user/Documents/SUTD/term4/test_M4/work/verilog/hanoi_display_1.v" "C:/Users/user/Documents/SUTD/term4/test_M4/work/verilog/reset_conditioner_2.v" "C:/Users/user/Documents/SUTD/term4/test_M4/work/verilog/dual_matrix_3.v" "C:/Users/user/Documents/SUTD/term4/test_M4/work/verilog/player_display_4.v" "C:/Users/user/Documents/SUTD/term4/test_M4/work/verilog/enemy_display_5.v" "C:/Users/user/Documents/SUTD/term4/test_M4/work/verilog/led_writer_6.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/user/Documents/SUTD/term4/test_M4/work/constraint/custom.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 16
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 16
wait_on_run impl_1

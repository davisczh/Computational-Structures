set projDir "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/vivado"
set projName "WORKS"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/au_top_0.v" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/hanoi_display_1.v" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/rom_ish_2.v" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/reset_conditioner_3.v" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/button_conditioner_4.v" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/edge_detector_5.v" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/counter_6.v" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/player_move_7.v" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/main_8.v" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/dual_matrix_9.v" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/player_display_10.v" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/enemy_display_11.v" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/pipeline_12.v" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/alu_13.v" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/regfile_14.v" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/counter_15.v" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/counter_16.v" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/led_writer_17.v" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/math_18.v" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/verilog/comparator_19.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/constraint/au.xdc" "C:/Users/user/Documents/SUTD/term4/works\ man/works\ man/work/constraint/custom.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 16
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 16
wait_on_run impl_1

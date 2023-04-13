set projDir "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/vivado"
set projName "WORKS"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/au_top_0.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/hanoi_display_1.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/rom_ish_2.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/bin_to_dec_3.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/reset_conditioner_4.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/button_conditioner_5.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/edge_detector_6.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/edge_detector_7.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/player_move_8.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/multi_seven_seg_9.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/main_10.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/dual_matrix_11.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/player_display_12.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/enemy_display_13.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/pipeline_14.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/counter_15.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/seven_seg_16.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/decoder_17.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/alu_18.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/regfile_19.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/counter_20.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/counter_21.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/led_writer_22.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/math_23.v" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/verilog/comparator_24.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/work/constraint/custom.xdc" "C:/Users/user/Documents/SUTD/term4/Computational-Structures/works\ man_actual/constraint/au.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 16
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 16
wait_on_run impl_1
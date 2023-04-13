/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module main_8 (
    input clk,
    input rst,
    input [7:0] pmove,
    input reset_game,
    input [7:0] player_pos,
    output reg [5:0] current_state,
    output reg [7:0] dump_state,
    output reg [7:0] dump_branch,
    output reg [7:0] dump_collisions,
    output reg [7:0] dump_pos
  );
  
  
  
  wire [16-1:0] M_alu_res;
  reg [16-1:0] M_alu_a;
  reg [16-1:0] M_alu_b;
  reg [6-1:0] M_alu_alufn;
  alu_13 alu (
    .a(M_alu_a),
    .b(M_alu_b),
    .alufn(M_alu_alufn),
    .res(M_alu_res)
  );
  
  wire [16-1:0] M_regfile_aout;
  wire [16-1:0] M_regfile_bout;
  wire [8-1:0] M_regfile_dump_state;
  wire [8-1:0] M_regfile_dump_collisions;
  wire [8-1:0] M_regfile_dump_branch;
  wire [8-1:0] M_regfile_dump_pos;
  reg [16-1:0] M_regfile_asel;
  reg [1-1:0] M_regfile_aconst;
  reg [16-1:0] M_regfile_bsel;
  reg [1-1:0] M_regfile_bconst;
  reg [4-1:0] M_regfile_wsel;
  reg [1-1:0] M_regfile_we;
  regfile_14 regfile (
    .clk(clk),
    .rst(rst),
    .wd(M_alu_res),
    .reset_game(reset_game),
    .asel(M_regfile_asel),
    .aconst(M_regfile_aconst),
    .bsel(M_regfile_bsel),
    .bconst(M_regfile_bconst),
    .wsel(M_regfile_wsel),
    .we(M_regfile_we),
    .aout(M_regfile_aout),
    .bout(M_regfile_bout),
    .dump_state(M_regfile_dump_state),
    .dump_collisions(M_regfile_dump_collisions),
    .dump_branch(M_regfile_dump_branch),
    .dump_pos(M_regfile_dump_pos)
  );
  wire [1-1:0] M_slowclock_value;
  counter_15 slowclock (
    .clk(clk),
    .rst(rst),
    .value(M_slowclock_value)
  );
  wire [1-1:0] M_slowerclock_value;
  counter_16 slowerclock (
    .clk(clk),
    .rst(rst),
    .value(M_slowerclock_value)
  );
  localparam START_states = 3'd0;
  localparam COLLISION_CHECK_states = 3'd1;
  localparam END_states = 3'd2;
  localparam DISPLAY_NEXT_states = 3'd3;
  localparam INIT_POS_states = 3'd4;
  localparam INIT_STATE_states = 3'd5;
  localparam UPDATE_POS_states = 3'd6;
  localparam UPDATE_SCORE_states = 3'd7;
  
  reg [2:0] M_states_d, M_states_q = START_states;
  
  wire [1-1:0] M_slowclock_edge_out;
  edge_detector_5 slowclock_edge (
    .clk(clk),
    .in(M_slowclock_value),
    .out(M_slowclock_edge_out)
  );
  
  always @* begin
    M_states_d = M_states_q;
    
    M_alu_a = M_regfile_aout;
    M_alu_b = M_regfile_bout;
    dump_branch = M_regfile_dump_branch;
    dump_pos = M_regfile_dump_pos;
    
    case (M_states_q)
      START_states: begin
        M_regfile_asel = pmove;
        M_regfile_bsel = 1'h0;
        M_regfile_aconst = 1'h1;
        M_regfile_bconst = 1'h1;
        M_alu_alufn = 6'h33;
        M_regfile_we = 1'h0;
        M_regfile_wsel = 1'h0;
        if (pmove == 1'h0) begin
          M_states_d = START_states;
        end else begin
          M_states_d = DISPLAY_NEXT_states;
        end
      end
      INIT_STATE_states: begin
        M_regfile_asel = 2'h3;
        M_regfile_bsel = 1'h1;
        M_regfile_aconst = 1'h0;
        M_regfile_bconst = 1'h0;
        M_alu_alufn = 6'h33;
        M_regfile_we = 1'h1;
        M_regfile_wsel = 3'h6;
        M_states_d = DISPLAY_NEXT_states;
      end
      DISPLAY_NEXT_states: begin
        M_regfile_asel = 3'h6;
        M_regfile_bsel = 1'h1;
        M_regfile_aconst = 1'h0;
        M_regfile_bconst = 1'h0;
        M_alu_alufn = 6'h00;
        M_regfile_we = 1'h1;
        M_regfile_wsel = 3'h6;
        M_states_d = UPDATE_POS_states;
      end
      UPDATE_POS_states: begin
        M_regfile_asel = player_pos;
        M_regfile_bsel = 2'h3;
        M_regfile_aconst = 1'h1;
        M_regfile_bconst = 1'h0;
        M_alu_alufn = 6'h00;
        M_regfile_we = 1'h1;
        M_regfile_wsel = 1'h0;
        M_states_d = COLLISION_CHECK_states;
      end
      COLLISION_CHECK_states: begin
        M_regfile_asel = 1'h0;
        M_regfile_bsel = 2'h2;
        M_regfile_aconst = 1'h0;
        M_regfile_bconst = 1'h0;
        M_alu_alufn = 6'h33;
        M_regfile_we = 1'h1;
        M_regfile_wsel = 2'h3;
        if (M_alu_res == 1'h1) begin
          M_states_d = END_states;
        end else begin
          if (M_slowclock_edge_out) begin
            M_states_d = DISPLAY_NEXT_states;
          end else begin
            M_states_d = COLLISION_CHECK_states;
          end
        end
      end
      END_states: begin
        M_regfile_asel = 2'h3;
        M_regfile_bsel = 2'h3;
        M_regfile_aconst = 1'h0;
        M_regfile_bconst = 1'h0;
        M_alu_alufn = 6'h00;
        M_regfile_wsel = 1'h0;
        M_regfile_we = 1'h0;
        if (pmove) begin
          M_states_d = START_states;
        end else begin
          M_states_d = END_states;
        end
      end
      UPDATE_SCORE_states: begin
        M_regfile_asel = 1'h1;
        M_regfile_bsel = 1'h1;
        M_regfile_aconst = 1'h0;
        M_regfile_bconst = 1'h0;
        M_alu_alufn = 6'h00;
        M_regfile_wsel = 1'h1;
        M_regfile_we = 1'h1;
        M_states_d = DISPLAY_NEXT_states;
      end
      default: begin
        M_regfile_asel = 1'h0;
        M_regfile_bsel = 1'h0;
        M_regfile_aconst = 1'h1;
        M_regfile_bconst = 1'h1;
        M_alu_alufn = 6'h00;
        M_regfile_we = 1'h0;
        M_regfile_wsel = 1'h0;
        M_states_d = START_states;
      end
    endcase
    current_state = M_states_q;
    dump_state = M_regfile_dump_state;
    dump_collisions = M_regfile_dump_collisions;
    if (reset_game) begin
      M_states_d = START_states;
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_states_q <= 1'h0;
    end else begin
      M_states_q <= M_states_d;
    end
  end
  
endmodule

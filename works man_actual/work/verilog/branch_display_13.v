/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module branch_display_13 (
    input clk,
    input rst,
    input [151:0] branch_positions,
    input [4:0] x,
    input [2:0] y,
    input screen,
    output reg [23:0] color
  );
  
  
  
  reg [4:0] branch_x;
  reg [2:0] branch_y;
  
  reg [7:0] branch_position;
  
  reg [3:0] k;
  
  always @* begin
    color = 24'h000000;
    for (k = 1'h0; k < 4'hf; k = k + 1) begin
      branch_position = branch_positions[(k)*8+7-:8];
      if (screen == 1'h0 && branch_position[7+0-:1] == 1'h0) begin
        branch_y = 3'h0 + branch_position[5+1-:2] + 2'h2;
        branch_x = branch_position[0+4-:5];
      end else begin
        if (screen == 1'h1 && branch_position[7+0-:1] == 1'h1) begin
          branch_y = 3'h0 + branch_position[5+1-:2] + 1'h1;
          branch_x = 5'h1f - branch_position[0+4-:5];
        end else begin
          branch_y = 8'h00;
          branch_x = 8'h00;
        end
      end
      if (branch_x == x) begin
        if (branch_y == y || branch_y == y + 1'h1 || branch_y == y + 2'h2) begin
          color = 24'h00893c;
        end
      end
    end
  end
endmodule
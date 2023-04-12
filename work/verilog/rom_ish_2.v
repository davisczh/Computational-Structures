/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module rom_ish_2 (
    input [7:0] state,
    output reg [79:0] out_state
  );
  
  
  
  reg level;
  
  reg [1:0] position;
  
  reg [79:0] bigout;
  
  reg temp;
  
  reg [2:0] y;
  
  reg [4:0] x;
  
  always @* begin
    
    case (state)
      8'h00: begin
        out_state = 80'h6060606060e0e0e0e0e0;
      end
      8'h01: begin
        out_state = 80'h6e60616068e6e0e0e0e2;
      end
      default: begin
        out_state = 80'h60606060606060606060;
      end
    endcase
  end
endmodule

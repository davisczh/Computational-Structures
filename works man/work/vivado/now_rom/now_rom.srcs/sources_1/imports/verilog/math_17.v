/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module math_17 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] alufn,
    output reg [15:0] res
  );
  
  
  
  
  always @* begin
    
    case (alufn)
      6'h00: begin
        res = a + b;
      end
      6'h01: begin
        res = a - b;
      end
      6'h02: begin
        res = a * b;
      end
      6'h03: begin
        res = a / b;
      end
      default: begin
        res = 8'h00;
      end
    endcase
  end
endmodule

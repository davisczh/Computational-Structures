/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_13 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] alufn,
    output reg [15:0] res
  );
  
  
  
  wire [16-1:0] M_math_res;
  math_17 math (
    .a(a),
    .b(b),
    .alufn(alufn),
    .res(M_math_res)
  );
  wire [16-1:0] M_comparator_res;
  comparator_18 comparator (
    .a(a),
    .b(b),
    .alufn(alufn),
    .res(M_comparator_res)
  );
  
  always @* begin
    res = 1'h0;
    
    case (alufn[4+1-:2])
      2'h0: begin
        res = M_math_res;
      end
      2'h3: begin
        res = M_comparator_res;
      end
    endcase
  end
endmodule

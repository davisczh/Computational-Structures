/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module hanoi_display_1 (
    input clk,
    input rst,
    input [7:0] player_position,
    input [247:0] enemy_positions,
    output reg led
  );
  
  
  
  wire [5-1:0] M_led_matrix_x;
  wire [3-1:0] M_led_matrix_y;
  wire [9-1:0] M_led_matrix_pixel;
  wire [1-1:0] M_led_matrix_screen;
  wire [1-1:0] M_led_matrix_led;
  reg [1-1:0] M_led_matrix_update;
  reg [24-1:0] M_led_matrix_color;
  dual_matrix_9 led_matrix (
    .clk(clk),
    .rst(rst),
    .update(M_led_matrix_update),
    .color(M_led_matrix_color),
    .x(M_led_matrix_x),
    .y(M_led_matrix_y),
    .pixel(M_led_matrix_pixel),
    .screen(M_led_matrix_screen),
    .led(M_led_matrix_led)
  );
  
  wire [24-1:0] M_player_color_color;
  reg [1-1:0] M_player_color_screen;
  reg [5-1:0] M_player_color_x;
  reg [3-1:0] M_player_color_y;
  player_display_10 player_color (
    .clk(clk),
    .rst(rst),
    .player_position(player_position),
    .screen(M_player_color_screen),
    .x(M_player_color_x),
    .y(M_player_color_y),
    .color(M_player_color_color)
  );
  wire [24-1:0] M_enemy_color_color;
  reg [5-1:0] M_enemy_color_x;
  reg [3-1:0] M_enemy_color_y;
  reg [1-1:0] M_enemy_color_screen;
  enemy_display_11 enemy_color (
    .clk(clk),
    .rst(rst),
    .enemy_positions(enemy_positions),
    .x(M_enemy_color_x),
    .y(M_enemy_color_y),
    .screen(M_enemy_color_screen),
    .color(M_enemy_color_color)
  );
  
  always @* begin
    M_led_matrix_update = 1'h1;
    led = M_led_matrix_led;
    M_player_color_screen = M_led_matrix_screen;
    M_player_color_x = M_led_matrix_x;
    M_player_color_y = M_led_matrix_y;
    M_enemy_color_screen = M_led_matrix_screen;
    M_enemy_color_x = M_led_matrix_x;
    M_enemy_color_y = M_led_matrix_y;
    M_led_matrix_color = 24'h000000;
    if (M_enemy_color_color == 24'h00ff00) begin
      M_led_matrix_color = M_enemy_color_color;
    end else begin
      M_led_matrix_color = (M_player_color_color);
    end
    if ((M_led_matrix_screen == 1'h0 && (M_led_matrix_y == 2'h2 || M_led_matrix_y == 1'h1) && M_led_matrix_x != 1'h0) || (M_led_matrix_screen == 1'h1 && (M_led_matrix_y == 3'h5 || M_led_matrix_y == 3'h6))) begin
      M_led_matrix_color = 24'hff0000;
    end
    if ((M_led_matrix_screen == 1'h0 && M_led_matrix_x == 1'h0) || (M_led_matrix_screen == 1'h1 && M_led_matrix_x == 5'h1f)) begin
      M_led_matrix_color = 24'h010101;
    end
  end
endmodule

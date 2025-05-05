`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2025 18:51:43
// Design Name: 
// Module Name: testbench_mag_comparator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module testbench_mag_comparator;
reg[3:0]A;
reg[3:0]B;

wire A_gt_B;
wire A_lt_B;
wire A_eq_B;

magnitude_comparator uut(
.A_gt_B(A_gt_B),
.A_lt_B(A_lt_B),
.A_eq_B(A_eq_B),
.A(A),
.B(B)
);

initial
begin
$monitor("Time = %0t | A = %b, B = %b | A_gt_B = %b, A_lt_B = %b, A_eq_B = %b", 
         $time, A, B, A_gt_B, A_lt_B, A_eq_B);

// Test cases
    A = 4'b0000; B = 4'b0000; #10;  // A == B
    A = 4'b1010; B = 4'b1001; #10;  // A > B
    A = 4'b0110; B = 4'b1110; #10;  // A < B
    A = 4'b1111; B = 4'b1111; #10;  // A == B
    A = 4'b0001; B = 4'b0010; #10;  // A < B
    A = 4'b1100; B = 4'b0100; #10;  // A > B
    A = 4'b1000; B = 4'b1000; #10;  // A == B
     A = 4'b0000; B = 4'b0000; #10;  // A == B
       A = 4'b1010; B = 4'b1001; #10;  // A > B
       A = 4'b0110; B = 4'b1110; #10;  // A < B
       A = 4'b1111; B = 4'b1111; #10;  // A == B
       A = 4'b0001; B = 4'b0010; #10;  // A < B
       A = 4'b1100; B = 4'b0100; #10;  // A > B
       A = 4'b1000; B = 4'b1000; #10;  // A == B A = 4'b0000; B = 4'b0000; #10;  // A == B
          A = 4'b1010; B = 4'b1001; #10;  // A > B
          A = 4'b0110; B = 4'b1110; #10;  // A < B
          A = 4'b1111; B = 4'b1111; #10;  // A == B
          A = 4'b0001; B = 4'b0010; #10;  // A < B
          A = 4'b1100; B = 4'b0100; #10;  // A > B
          A = 4'b1000; B = 4'b1000; #10;  // A == B

    $finish;
  end

endmodule
`timescale 1ns/1ns

module q5(input [7:0]D, input clk, output[7:0] Q);
	q4DLatch Reg1(D[0], clk, Q[0]);
	q4DLatch Reg2(D[1], clk, Q[1]);
	q4DLatch Reg3(D[2], clk, Q[2]);
	q4DLatch Reg4(D[3], clk, Q[3]);
	q4DLatch Reg5(D[4], clk, Q[4]);
	q4DLatch Reg6(D[5], clk, Q[5]);
	q4DLatch Reg7(D[6], clk, Q[6]);
	q4DLatch Reg8(D[7], clk, Q[7]);
endmodule

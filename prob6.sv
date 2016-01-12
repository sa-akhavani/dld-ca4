`timescale 1ns/1ns

module q6ShiftReg(input sin, clk, output[7:0] Q);
	q4DLatch Reg1(sin, clk, Q[7]);
	q4DLatch Reg2(Q[7], clk, Q[6]);
	q4DLatch Reg3(Q[6], clk, Q[5]);
	q4DLatch Reg4(Q[5], clk, Q[4]);
	q4DLatch Reg5(Q[4], clk, Q[3]);
	q4DLatch Reg6(Q[3], clk, Q[2]);
	q4DLatch Reg7(Q[2], clk, Q[1]);
	q4DLatch Reg8(Q[1], clk, Q[0]);
endmodule
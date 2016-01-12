`timescale 1ns/1ns

module q8DFlipFlop(input D, clk, output Q);
	logic qq;
	q4DLatch Reg1(D, ~clk, qq);
	q4DLatch Reg2(qq, clk, Q);
endmodule
`timescale 1ns/1ns

module q9SDFlipFlop(input D, clk, RS, output Q);
	logic ii;
	and(ii, ~RS, D);
	q4DLatch(ii, ~clk, Q);
endmodule

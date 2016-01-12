`timescale 1ns/1ns

module q10ShiftReg(input sin, clk, output [7:0]Q);
	genvar i;
	q8DFlipFlop Reg (sin, ~clk, Q[7]);
	generate for(i = 7; i > 0; i = i - 1)
		q8DFlipFlop Reg(Q[i], ~clk, Q[i-1]);
	endgenerate
endmodule

module q10NormalReg(input [7:0]D, input clk, output [7:0]Q);
	genvar i;
	generate for(i=0; i < 8; i = i + 1)
		q8DFlipFlop Reg(D[i], ~clk, Q[i]);
	endgenerate
endmodule
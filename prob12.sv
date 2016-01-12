`timescale 1ns/1ns

module q12ShiftRegAlways(input [7:0]D, input clk,  RS, output logic [7:0]Q);
	always@(negedge clk, posedge RS) begin
		if (RS) 
			Q <= 0;
		else 
			Q <= D;
	end
endmodule
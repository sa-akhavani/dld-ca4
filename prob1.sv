`timescale 1ns/1ns

module q1(input S, R, clk, output Q, QBar);
   logic ss, rr;
   nand(ss, ~clk, ~S);
   nand(rr, ~clk, ~R);
   nand(Q, QBar, ss);
   nand(QBar, Q, rr);
endmodule

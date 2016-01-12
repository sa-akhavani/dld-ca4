`timescale 1ns/1ns

module q2(input S, R, clk, output Q, QBar);
   logic ss, rr;
   nand#(8,8)(ss, ~clk, ~S);
   nand#(8,8)(rr, ~clk, ~R);
   nand#(8,8)(Q, QBar, ss);
   nand#(8,8)(QBar, Q, rr);
endmodule

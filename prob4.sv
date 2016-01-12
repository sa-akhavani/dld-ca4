`timescale 1ns/1ns

module q4DLatch(input D, clk, output Q);
   logic ss, rr, dd, QBar;
   not  #(6,4)(dd, D);
   nand #(8,8)(ss, ~clk, D);
   nand #(8,8)(rr, ~clk, dd);
   nand #(8,8)(Q, QBar, ss);	
   nand #(8,8)(QBar, Q, rr);
endmodule


module q4_tb();
   logic ddd = 0, ccllkk = 1;
   logic qqq;
   q4DLatch UUT(ddd, ccllkk, qqq);
   initial begin
	  #100 ccllkk = 0;
      #100 ccllkk = 1;
      #100 ddd = 1;
      #100 ccllkk = 0;
      #100 ccllkk = 1;
    end
endmodule
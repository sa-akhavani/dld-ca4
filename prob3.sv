`timescale 1ns/1ns	

module q3_tb();
   logic sss = 0, rrr = 1, ccllkk = 1;
   logic qqq, qqqbar;
   q2 UUT(sss, rrr, ccllkk, qqq, qqqbar);
   initial begin
	  #100 ccllkk = 0;
      #100 ccllkk = 1;
      #100 rrr = 0;
      #100 sss = 1;
      #100 ccllkk = 0;
      #100 ccllkk = 1;
      #100 sss = 1;
      #100 rrr = 1;
      #100 ccllkk = 0;
      #100 ccllkk = 1;
	  // Loss Of Memory Happens Here:
//      #100 sss = 0;
//      #100 rrr = 0;	  
//      #100 ccllkk = 0;
//      #100 ccllkk = 1;	  
    end
endmodule

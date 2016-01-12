`timescale 1ns/1ns

module q11_tb();
   logic ssiinn = 0, ccllkk = 1;
   logic [7:0]qqq;
   q10ShiftReg UUT(ssiinn, ccllkk, qqq);
   initial begin
      #400 ccllkk = 0;
      #300 ccllkk = 1;
//      #100 ssiinn = 1;
      #400 ccllkk = 0;
      #300 ccllkk = 1;
      #400 ccllkk = 0;
      #300 ccllkk = 1;
      #400 ccllkk = 0;
      #300 ccllkk = 1;
      #400 ccllkk = 0;
      #300 ccllkk = 1;
    end
endmodule
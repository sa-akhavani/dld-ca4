`timescale 1ns/1ns

module q7_tb();
   logic ssiinn = 0, ccllkk = 1;
   logic [7:0]qqq;
   q6ShiftReg UUT(ssiinn, ccllkk, qqq);
   initial begin
      #700 ccllkk = 0;
      #300 ccllkk = 1;
      #100 ssiinn = 1;
      #700 ccllkk = 0;
      #300 ccllkk = 1;
    end
endmodule
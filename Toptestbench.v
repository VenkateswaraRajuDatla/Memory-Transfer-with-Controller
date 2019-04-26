`include "Toptest.v"
module Toptestbench;
reg clock;
reg reset;
reg [7:0]DatainA;
initial
begin
clock=0;
forever #5 clock=~clock;
end

initial
begin
reset=1;
#8 reset =0;

#10 DatainA= 8'b00000001 ;
#10 DatainA = 8'b00000010;
# 10 DatainA= 8'b00000011 ;
#10 DatainA = 8'b00000100;
# 10 DatainA= 8'b00000101 ;
#10 reset = 1;
#10 DatainA = 8'b00000110;
#10 DatainA= 8'b00000111;
#10 DatainA= 8'b00001000;


//#500 $finish;
end
Topwithouttest t1(.clock(clock), .reset(reset), .DatainA(DatainA));
endmodule

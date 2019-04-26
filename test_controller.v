`include "controller.v"
module test_controller;
reg clock;
reg reset;
wire incA;
wire incB;
wire weA;
wire weB;
wire [4:0] A;
initial

begin
clock=0;
reset=1;
#10 reset =0;
//#500 $finish;
end

always #5 clock=~clock;

controller c1 (clock, reset, incA, incB, weB, weA, A);
endmodule
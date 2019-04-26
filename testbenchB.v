`include "CounterB.v"
module test_CounterB;
reg clock;
reg reset;
reg incB;
wire [2:0] addrB;
initial

begin
clock=0;
incB=0;
#10 reset=1;
#5 reset =0;
#10 incB=1;
#100 $finish;
end

always #5 clock=~clock;

counter c1 (clock, incB, reset, addrB);
endmodule

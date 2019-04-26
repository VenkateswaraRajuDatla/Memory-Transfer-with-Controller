'include "counter.v"
module test_fixture;
reg clock;
reg reset;
reg incA;
wire [2:0] addrA;

initial
begin
#10 reset=1;
#10 incA=1;
#50 $finish;
end

always#5 clock=~clock;

counter c1 (.clock(clock), .reset(reset), .incA(incA), .addrA(addrA));
endmodule
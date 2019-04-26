
module DFlipflop(Q,D,clock);
output [7:0]Q;
input [7:0]D;
input clock;
reg [7:0]Q;
always@(posedge clock)
begin
Q<=D;
end
endmodule

`timescale 10ps/1ps;
module MemBtest;
wire [7:0]dout;
reg [7:0]din;
reg [2:0]addr;
reg We,clk;
MemoryB m1(dout,din,addr,We,clk);
initial
begin
clk=1;
forever #5 clk=~clk;
end
initial
begin
We=1;
addr=3'b000;
din=8'b10101010;
#10
addr=3'b001;
din=8'b10101111;
#10
We=0;
addr=3'b000;
#10
addr=3'b001;
end
endmodule

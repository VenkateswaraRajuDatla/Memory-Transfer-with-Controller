
module MemoryA(dataout,datain,address,WEA,clock,reset);
output [7:0]dataout;
input [7:0]datain;
input [2:0]address;
input WEA,clock,reset;
reg [7:0]SRAM[7:0];
reg [7:0]dataout;

always@(posedge clock)
begin
if(reset)
begin
dataout <= 8'b00000000;
end
else if(WEA)
SRAM[address]<=datain;
else
dataout<=SRAM[address];
end
endmodule


module MemoryB(doutB,datainB,addressB,WEB,clock,reset);
output [7:0]doutB;
input [7:0]datainB;
input [1:0]addressB;
input WEB,clock,reset;
reg [7:0]SRAM[3:0];
reg [7:0]doutB;
always@(posedge clock)
begin
if(WEB)
SRAM[addressB]<=datainB;
else
doutB<=SRAM[addressB];
end
endmodule

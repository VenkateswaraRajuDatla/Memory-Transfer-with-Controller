module ALU(dataout1,datainB,clock);
output [7:0]datainB;
input [7:0]dataout1;
input clock;
reg [7:0]addout,subout;
reg sign;
reg s;
reg [7:0]datainB;
wire [7:0]dataout2;
DFlipflop f(dataout2,dataout1,clock); 
initial
begin
s=0;
end
always@(posedge clock)
begin
if(dataout1>dataout2)
begin
s=s+1;
sign=1;
end
else
begin
s=s+1;
sign=0;
end
addout=dataout1+dataout2;
subout=dataout2-dataout1;
if (s%2!==0)
datainB=(sign)?addout:subout;
end
endmodule


module ALUTest;
wire [7:0]dinB;
reg [7:0]dout1;
reg clk;
ALU a(dout1,dinB,clk);
initial
begin
clk=1;
forever #5 clk=~clk;
end
initial 
begin
dout1= 8'b11100101 ;
#10 dout1 = 8'b00000001;
# 10 dout1= 8'b00000011 ;
#10 dout1 = 8'b00000010;
end
endmodule

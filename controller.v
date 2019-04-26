module controller( clock, reset, incA, incB, weB, weA, A);
input clock;
input reset;

output incA;
output incB;
output weB;
output weA;
output [4:0] A;
reg [4:0] A;

//wire reset;
reg incA;
reg incB;
reg weA;
reg weB;

wire clock;

always@(posedge clock)
begin
//A <= 5'b00000;
if(reset == 1'b1)
begin
A <= 5'b00000;
incA <= 1'b0;
incB <= 1'b0;
weA <= 1'b0;
weB <= 1'b0;
end
else if( A==5'b10010)
begin
A <=5'b00000;
end
else if(reset==1'b0)
begin
A <= A + 5'b00001;
end
end


always@ (A)
begin
if( A==5'b00001 || A==5'b00001 || A==5'b00010 || A==5'b00011 || A==5'b00100 || A==5'b00101 || A==5'b00110 || A==5'b00111 || A==5'b01000)
begin
weA <=1;
end
else
begin
weA <=0;
end

if(A== 5'b01100 || A==5'b01110 || A==5'b10000 || A==5'b10010)
begin
incB <=1;
end
else
begin
incB <=0;
end


if(A== 5'b01011 || A==5'b01101 || A==5'b01111 || A==5'b10001)
begin
weB <=1;
end
else
begin
weB <=0;
end

if( A== 5'b10001 || A==5'b10010 || A==5'b10011 || reset==1)
begin
incA <=0;
end
else
begin
incA <=1;
end


end

endmodule

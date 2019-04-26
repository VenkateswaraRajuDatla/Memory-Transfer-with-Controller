module counterB( clock, incB, reset, addrB);
input clock;
input reset;
input incB;
output [1:0] addrB;
reg [1:0] addrB;
//wire incB;
//wire reset;

//wire clock;

always@(posedge clock)
begin
//addrB <= 2'b00;
if(reset == 1'b1)
begin
addrB <= 2'b00;
end
else if(incB == 1'b1 && reset==0)
begin
addrB <= addrB + 2'b01;
end

end

endmodule

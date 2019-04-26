`include "controller.v"
`include "CounterA.v"
`include "MemoryA.v"
`include "MemoryB.v"
`include "ALU.v"
`include "CounterB.v"
`include "DFlip.v"
module Topwithouttest(clock, reset, DatainA);
input clock;
input reset;
input [7:0] DatainA;

wire [7:0]DatainB;
wire[7:0] Dout1;

wire incA_combine;
wire [2:0] addrA_combine;
wire weA_combine;
wire [1:0] addrB_combine;
wire weB_combine;
wire incB_combine;

counter countA (.incA(incA_combine),.clock(clock), .reset(reset), .addrA(addrA_combine));
MemoryA memA (.dataout(Dout1),.datain(DatainA),.address(addrA_combine),.WEA(weA_combine),.clock(clock),.reset(reset));
MemoryB memB(.datainB(DatainB),.addressB(addrB_combine),.WEB(weB_combine),.clock(clock));
ALU ALU (.dataout1(Dout1),.datainB(DatainB),.clock(clock));
controller controller(.clock(clock), .reset(reset), .incA(incA_combine), .incB(incB_combine), .weB(weB_combine), .weA(weA_combine));
counterB countB( .clock(clock), .incB(incB_combine),.reset(reset), .addrB(addrB_combine));

endmodule

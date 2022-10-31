`timescale 1ns / 1ns
module tb_RCA;
parameter STEP = 100;
reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] sum;
wire cout;

RCA uut(.x(a), .y(b), .c_in(cin), .s(sum), .c_out(cout));

initial begin
#STEP; a = 4'b0000; b = 4'b0000; cin = 0;
#STEP; a = 4'b1111; b = 4'b1111; cin = 0;
#STEP; a = 4'b0010; b = 4'b0000; cin = 0;
#STEP; a = 4'b0010; b = 4'b0100; cin = 0;
#STEP; a = 4'b0000; b = 4'b0001; cin = 0;
#STEP; a = 4'b0001; b = 4'b0001; cin = 0;
#STEP; a = 4'b0011; b = 4'b0001; cin = 0;
#STEP; a = 4'b0000; b = 4'b0000; cin = 0;
#STEP; a = 4'b0010; b = 4'b0000; cin = 0;
#STEP; a = 4'b0000; b = 4'b0001; cin = 0;
#STEP; a = 4'b0010; b = 4'b0011; cin = 0;
#STEP; a = 4'b0001; b = 4'b0010; cin = 1;
#STEP; a = 4'b0001; b = 4'b0110; cin = 1;
#STEP; a = 4'b0001; b = 4'b0010; cin = 1;
#STEP; a = 4'b0101; b = 4'b0110; cin = 1;
#STEP; a = 4'b0001; b = 4'b0000; cin = 1;
#STEP; a = 4'b0000; b = 4'b0000; cin = 1;
#STEP; a = 4'b1110; b = 4'b0111; cin = 1;
#STEP; a = 4'b1000; b = 4'b1101; cin = 1;
#STEP; a = 4'b1100; b = 4'b0001; cin = 1;
#STEP; a = 4'b1100; b = 4'b1011; cin = 1;
$stop;
end

endmodule

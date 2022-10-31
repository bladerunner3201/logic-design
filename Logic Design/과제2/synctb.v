
module counter_tb;
reg clk , rst;
wire [3:0] out0, out1, out2, out3;

counter_top uut (.clk(clk), .rst(rst), .out0(out0), .out1(out1), .out2(out2), .out3(out3));

always
#5 clk = ~clk;

initial
begin
clk = 1'b0;
rst = 1'b0;
repeat(2)
@(negedge clk);
rst = 1'b1;
repeat(20)
@(negedge clk);
$finish;
end
endmodule

`timescale 1ns/ 1ns
module testbench;
reg a, b, cin;
wire s, c;

full_adder fa(.x(a), .y(b), .c_in(cin), .s_out(s), .c_out(c));
full_adder_behavioral fb(.x(a), .y(b), .c_in(cin), .s_out(s), .c_out(c));

initial begin
   a = 0; b = 0; cin = 0;
   #50; a = 0; b = 0; cin = 1;
   #50; a = 0; b = 1; cin = 0;
   #50; a = 0; b = 1; cin = 1;
   #50; a = 1; b = 0; cin = 0;
   #50; a = 1; b = 0; cin = 1;
   #50; a = 1; b = 1; cin = 0;
   #50; a = 1; b = 1; cin = 1;
   #50;
end

endmodule 

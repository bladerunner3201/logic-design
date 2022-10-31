module RCA (input [3:0] x, y, input c_in, output [3:0] s, output c_out);
wire w1, w2, w3;

full_adder_behavioral fa0(.x(x[0]), .y(y[0]), .c_in(c_in), .s_out(s[0]), .c_out(w1));
full_adder_behavioral fa1(.x(x[1]), .y(y[1]), .c_in(w1), .s_out(s[1]), .c_out(w2));
full_adder_behavioral fa2(.x(x[2]), .y(y[2]), .c_in(w2), .s_out(s[2]), .c_out(w3));
full_adder_behavioral fa3(.x(x[3]), .y(y[3]), .c_in(w3), .s_out(s[3]), .c_out(c_out));

endmodule

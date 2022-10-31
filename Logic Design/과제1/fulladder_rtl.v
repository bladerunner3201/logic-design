module full_adder(x, y, c_in, s_out, c_out);

input x, y, c_in;
output s_out, c_out;
wire w1, w2, w3;

half_adder HA1(.x(x), .y(y), .s_out(w1), .c_out(w2));
half_adder HA2(.x(w1), .y(c_in), .s_out(s_out), .c_out(w3));

or_gate OR1(.out(c_out), .a(w2), .b(w3));

endmodule 

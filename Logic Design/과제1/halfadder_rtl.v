module half_adder (x, y, s_out, c_out);

input x, y;
output s_out, c_out;

reg s_out, c_out;

always @ (x, y)
begin
	if (x == y)
	begin
		s_out = 0;
	end
	else
	begin
		s_out = 1;
	end
end

always @ (x, y)
begin
	if (x == 1 && y == 1)
	begin
		c_out = 1;
	end
	else
	begin
		c_out = 0;
	end
end

endmodule 


module full_adder_behavioral(x, y, c_in, s_out, c_out);

input x, y, c_in;
output s_out, c_out;
reg s_out, c_out;

always @ (x or y or c_in)
begin
	if (c_in == 0)
	begin
		if (x == 0 && y == 0)
		begin
			s_out = 0;
			c_out = 0;
		end
		else if (x == 1 && y == 1)
		begin
			s_out = 0;
			c_out = 1;
		end
		else
		begin
			s_out = 1;
			c_out = 0;
		end
	end
	else if (c_in == 1)
	begin
		if (x == 0 && y == 0)
		begin
			s_out = 1;
			c_out = 0;
		end
		else if (x == 1 && y == 1)
		begin
			s_out = 1;
			c_out = 1;
		end
		else
		begin
			s_out = 0;
			c_out = 1;
		end
	end
end
endmodule 
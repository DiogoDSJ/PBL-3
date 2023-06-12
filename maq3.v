module maq3(clk, t, e1, e0, p, o);

	input clk, t;
	output e1, e0, p, o;
	wire s1, s2, s3, s4,s5,s6;
	
	
	and (s1, ~e1, e0);
	and (s2, e1, ~e0, t);
	and (s3, ~e1, t);
	and (s4, ~e1, e0);
	or (s5, s1, s2);
	and (s6, ~e1, ~e0, t);
	and (p, e1, ~e0);
	or (o, s3,s4);
	
	ffd ff_e1(s5, e1, clk);
	ffd ff_e0(s6, e0, clk);

endmodule
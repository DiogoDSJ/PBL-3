module contador(clk,j,k,q1,q2,en);

	input clk,j,k,en;
	output q1,q2;
	wire s;

	and (s,en, 1);

	ffjk test0(s,s,clk,q1);
	ffjk test1(s,s,~q1,q2);

endmodule 
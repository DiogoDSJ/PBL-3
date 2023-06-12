module msg_loading(clk, k, l, m, x, y, z, ponto, e);

	input clk, x, y, z, k, l, m, e;
	output ponto;

	wire s1, s2;

	and(s1, k, ~l, m, ~e);
	and(s2, ~x, ~y, z, e);

	nor(ponto, s1, s2);

endmodule
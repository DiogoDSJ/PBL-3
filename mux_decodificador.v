module mux_decodificador(e, a, b, saida);

	input e, a, b;
	output saida;

	wire s1,s2;
	
	and(s1, a, ~e);
	and(s2, b, e);
	
	or(saida, s1, s2);

endmodule
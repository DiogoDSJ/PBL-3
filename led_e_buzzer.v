module led_e_buzzer(clk, x,y, z, p, o, led_vermelho, led_verde, led_azul, buzzer, e);

	input clk, x, y, z, p, o, e;
	output led_vermelho, led_verde, led_azul, buzzer;
	wire subida;
	
	wire s1,s2,s3,s4;

	and(s1, ~p, o);
	and(s2, p, ~o);
	and(s3, ~x, ~y, ~z, e);
	and(s4, s2, clk);

	
	or(led_vermelho, s1);
	or(led_verde, s1, s4);
	or(led_azul, s3);
	or(buzzer, s4);


endmodule



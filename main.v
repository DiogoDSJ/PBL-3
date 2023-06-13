module main(clk, maq1_e0, maq2_e1, maq2_e0, sr, sn, sp, b1, b0, v1, v0, k, l, m, x, y, z, maq3_e1, maq3_e0,t, p, o, led_vermelho, led_verde, led_azul, buzzer, d1,d2,d3,d4,a,b,c,d,e,f,g,ponto);

	input clk, sr, sn, sp, b1, b0, v1, v0;
	output maq1_e0, maq2_e1, maq2_e0, maq3_e1, maq3_e0, k, l, m, x, y, z, p, o, t, a, b, c, d, e, f, g;
	output d1,d2,d3,d4;
	output led_vermelho, led_verde, led_azul, buzzer, ponto;
	
	wire ativar_saida_maq1, ativar_saida_maq2;
	wire clk_maquinas, clk_contador;
	wire ativacao_maq2;
	wire fj, fk;

	divisor_de_clock(1,1,clk,clk_maquinas,clk_contador); 
	
	maq1(clk_maquinas,sn,sr,sp,k,l,m,maq1_e0,ativacao_maq2);
	maq2(clk_maquinas,ativacao_maq2,b1,b0,v1,v0,x,y,z,maq2_e0,maq2_e1,t);
	maq3(clk_maquinas,t,maq3_e1,maq3_e0,p,o);
	
	msg_loading(clk_maquinas, k, l, m, x, y, z, ponto, ativacao_maq2);
	led_e_buzzer(clk_maquinas, x,y, z, p, o, led_vermelho, led_verde, led_azul, buzzer, ativacao_maq2);
	
	main_contador(clk_contador,d1,d2,d3,d4,a,b,c,d,e,f,g,x,y,z,k,l,m,ativacao_maq2);
	

endmodule
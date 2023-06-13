module main_contador(clk,s1,s2,s3,s4,a,b,c,d,e,f,g,x,y,z,k,l,m,entrada);

	input clk,x,y,z,k,l,m,entrada;
	output s1,s2,s3,s4;
	output a,b,c,d,e,f,g;
	wire a_bebida, b_bebida, c_bebida, d_bebida, e_bebida, f_bebida, g_bebida;
	wire a_sensor, b_sensor, c_sensor, d_sensor, e_sensor, f_sensor, g_sensor;
	wire A, B;
	wire fj, fk;


	contador(clk,fj,fk,A,B,1);
	decodificador(B,A,s1,s2,s3,s4,1,x,y,z);

	decodbebida(x,y,z,B,A,a_bebida, b_bebida, c_bebida, d_bebida, e_bebida, f_bebida, g_bebida);
	decodsensor(k,l,m,B,A,a_sensor, b_sensor, c_sensor, d_sensor, e_sensor, f_sensor, g_sensor);

	mux_decodificador m1(entrada, a_sensor, a_bebida, a);
	mux_decodificador m2(entrada, b_sensor, b_bebida, b);
	mux_decodificador m3(entrada, c_sensor, c_bebida, c);
	mux_decodificador m4(entrada, d_sensor, d_bebida, d);
	mux_decodificador m5(entrada, e_sensor, e_bebida, e);
	mux_decodificador m6(entrada, f_sensor, f_bebida, f);
	mux_decodificador m7(entrada, g_sensor, g_bebida, g);

endmodule
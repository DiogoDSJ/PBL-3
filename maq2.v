module maq2(clk,e,b1,b0,v1,v0,x,y,z,e0,e1,ativacao_maq3);
	input e,b0,b1,v0,v1,clk;
	output x,y,z,e0,e1, ativacao_maq3;
	
	wire s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14
	,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,sf1,sf2,s99;
	
	//excitação primeiro flip
	and (s1,~e0,~b1,~b0,~v1,~v0);
	and (s2,~e0,~b1,b0,~v1,v0);
	and (s3,~e0,b1,~b0,v1,~v0);
	and (s4,~e0,b1,b0,v1,v0);
	and (s5, e1,~e0);
	or (sf1,s1,s2,s3,s4,s5,~e);
	ffd instancia1(sf1,e1,clk);
	
	//excitação segundo flip
	and (s6,~e1,~b0,v0);
	and (s7,~e1,~b1,v1);
	and (s8,~e1,b0,~v0);
	and (s9,~e1,b1,~v1);
	or (sf2, s6,s7,s8,s9,~e);
	ffd instancia2(sf2,e0,clk);
	
	//saida x
	and (s10,~e0,e,b1,~b0,b1,v1,~v0);
	and (s11,~e0,e,b1,b0,v1,v0);
	and (s12,e1,~e0);
	and (s13,e1,~e);
	or (x,s10,s11,s12,s13);
	
	//saida y
	and (s14,~e0,e,~b1,~b0,~v1,~v0);
	and (s15,e1,~e0);
	and (s16,e1,~e);
	and (s99,~e0,e,~b1,b0,~v1,v0);
	or (y,s14,s15,s16,s99);
	
	//saida z
	and (s17,~e1,~e);
	and (s18,~e1,~e0,v0);
	and (s19,~e1,~e0,~b1,v1);
	and (s20,~e1,~e0,b0);
	and (s21,~e1,~b1,b0,~v1,v0);
	and (s22,~e1,~e0,b1,~v1);
	and (s23,~e1,b1,b0,v1,v0);
	and (s24,e0,~b1,~b0,~v1,~v0);
	and (s25,e0,b1,~b0,v1,~v0);
	and (s26,e1,e0);
	or(z,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26);
	
	// ativacao maq 3
	and(ativacao_maq3, x, y, ~z);
endmodule
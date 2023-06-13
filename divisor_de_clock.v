module divisor_de_clock(j,k,clk,saida1, saida2); // módulo de divisor de clock.
	input k,j,clk;
	output saida1, saida2;
	wire s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28;
	
	
	
	ffjk ff1(j,k,clk,s1);
	ffjk ff2(j,k,s1,s2);
	ffjk ff3(j,k,s2,s3);
	ffjk ff4(j,k,s3,s4); 
	ffjk ff5(j,k,s4,s5);
	ffjk ff6(j,k,s5,s6); 
	ffjk ff7(j,k,s6,s7); 	
	ffjk ff8(j,k,s7,s8); 
	ffjk ff9(j,k,s8,s9); 	
	ffjk ff10(j,k,s9,s10); 
	ffjk ff11(j,k,s10,s11); 
	ffjk ff12(j,k,s11,s12); 
	ffjk ff13(j,k,s12,s13); 
	ffjk ff14(j,k,s13,s14); 
	ffjk ff15(j,k,s14,s15); 
	ffjk ff16(j,k,s15,s16); 
	ffjk ff17(j,k,s16,s17); 
	ffjk ff18(j,k,s17,s18); 
	ffjk ff19(j,k,s18,s19); 
	ffjk ff20(j,k,s19,s20); 
	ffjk ff21(j,k,s20,s21); 
	ffjk ff22(j,k,s21,s22); 
	ffjk ff23(j,k,s22,s23);
	ffjk ff24(j,k,s23,s24);
	ffjk ff25(j,k,s24,s25);
	ffjk ff26(j,k,s25,s26);
	ffjk ff27(j,k,s26,s27);
	ffjk ff28(j,k,s27,s28);
	

	assign saida1 = s28;
	assign saida2 = s14;
	
	
endmodule
module decodbebida(X,Y,Z,A,B,a,b,c,d,e,f,g);

input X,Y,Z,A,B;
output a,b,c,d,e,f,g;
wire s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s22,s23,s24,s25,s26,s27,s28,s29,s30,s31,s32,s33,s34,s35,s36;


and (s1,~X,~Y,Z);
and (s2,~X,Z,~B);
and (s3,Z,~A,~B);
and (s4,X,~A,B);
and (s5,X,Y);

or (a,s1,s2,s3,s4,s5);

and (s6,~X,~Y);
and (s7,~Y,~Z,A);
and (s8,A,B);
and (s9,~X,Z,A);
and (s10,X,Y);

or (b,s6,s7,s8,s9,s10);


and (s11,~X,~Y); 
and (s12,~Y,A);
and (s13,A,B);
and (s14,Z,A);
and (s15,X,Y);

or (c,s11,s12,s13,s14,s15);

and (s16,~X,~Y,Z);
and (s17,~Y,Z,~B);
and (s18,Z,~A,~B);
and (s19,Y,~Z,A,~B);
and (s20,X,~A,B);
and (s21,X,Y);

or (d,s16,s17,s18,s19,s20,s21);

and (s22,~X,~Y,Z);
and (s23,Z,~A,~B);
and (s24,X,~A,B);
and (s25,X,Y);

or (e,s22,s23,s24,s25);

and (s26,~X,~Y,Z);
and (s27,Z,~A,~B);
and (s28,X,~A,B);
and (s29,X,Y);

or (f,s26,s27,s28,s29);


and (s30,~X,Z);
and (s31,Y,~A); 
and (s32,Y,B);
and (s33,X,~Z);
and (s34,X,~A);
and (s35,X,B);
and (s36,X,Y);

or (g,s30,s31,s32,s33,s34,s35,s36);

endmodule


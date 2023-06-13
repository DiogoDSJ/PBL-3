module decodsensor(X,Y,Z,A,B,a,b,c,d,e,f,g);

input X,Y,Z,A,B;
output a,b,c,d,e,f,g;
wire s1,s2,s3,s4,s5,s6,s7,s8,s9,s10;

and (s1,~Y,~Z);
and (s2,~Y,~B);
or (a,s1,s2,X,A);

and (s3,~Y,~Z,);
or (b,A,B,X,s3);

or (c,~Z,B,A,X);

and (s4,~Y,~Z);
and (s5,~Y,~B);
or (d,A,X,s4,s5);

and (s6,~Y,~Z);
and (s7,Z,~B);
or (e,s6,s7,A,X);

and (s8,~Y,~Z);
or (f,A,X,~B,s8);

and (s9,~Y,~Z);
and (s10,~Y,~B);
or (g,A,X,s9,s10);



endmodule 
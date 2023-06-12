module decodsensor(X,Y,Z,A,B,a,b,c,d,e,f,g);

input X,Y,Z,A,B;
output a,b,c,d,e,f,g;
wire s1,s2,s3,s4;

and and0(s1,~Y,~B);
or or0(a,s1,A);
or or1(b,B,A);
or or2(c,~Z,B,A);
and and1(s2,~Y,~B);
or or3(d,s2,A);
and and2(s3,Z,~B);
or or4(e,s3,A);
or or5(f,~B,A);
and and3(s4,~Y,~B);
or or6(g,s4,A);

endmodule 
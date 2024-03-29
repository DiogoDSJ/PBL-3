module decodificador(A,B,s1,s2,s3,s4,en,x,y,z);

input A,B,en,x,y,z;
output s1,s2,s3,s4;
wire ss1,ss2,ss3,ss4;
wire sz1,sz2,sz3,sz4;
wire v1;


and(v1,~x,~y,~z);

and and0 (ss1,A,B);
and and1 (ss2,A,~B);
and and2 (ss3,~A,B);

and (sz1,en,ss1,~v1);
and (sz2,en,ss2,~v1);
and (sz3,en,ss3,~v1);
and (sz4,en,ss4);

not (s1,sz1);
not (s2,sz2);
not (s3,sz3);
not (s4,sz4);

and and3 (ss4,~A,~B);

endmodule
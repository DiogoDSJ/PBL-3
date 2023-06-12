module maq1(clk,sn,sr,sp,k,l,m,e0,saida_e);

  input sn,sr,sp,clk;
  output k,l,m,e0,saida_e;
  wire a0,a1,a2,a3,a4;
  wire e0prox;
 
  or(e0, e0prox, e0prox);
  and (a0, sr,sn,sp);
  or(k, a0, e0);
  and (a1, ~e0, sr, ~sn);
  and (a2, ~e0, sr, ~sp);
  and (a3, e0, sr, sn, sp);
  or(l, a1,a2,a3);
  or(m, ~sr, sp, e0);
  
  and(saida_e, k, l, m);
  
  
  ffd ff0(a0,e0prox,clk);
 

endmodule

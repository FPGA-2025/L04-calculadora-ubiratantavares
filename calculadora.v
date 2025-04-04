module calculadora (
  input  [7:0] entrada_A,
  input  [7:0] entrada_B,
  input  [2:0] codigo,
  output [7:0] saida
);

  assign saida = (codigo == 3'b000) ? 8'b00000000 :             // zerar
                 (codigo == 3'b001) ? entrada_A   :             // mostrar_A
                 (codigo == 3'b010) ? entrada_B   :             // mostrar_B
                 (codigo == 3'b011) ? entrada_A + entrada_B :   // somar
                 (codigo == 3'b100) ? entrada_A - entrada_B :   // subtrair
                 8'b00000000;  // default (operação inválida)
endmodule


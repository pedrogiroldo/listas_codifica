import 'package:lista_4/produto.dart';

void main() {
  Produto produto1 = Produto(codigo: "001", nome: "Produto A", preco: 100.0);
  produto1.aplicarDesconto(10);
  Produto produto2 = Produto(codigo: "002", nome: "Produto B", preco: 200.0);
  Produto produto3 = Produto(codigo: "003", nome: "Produto C", preco: 300.0);

  produto1.exibirDetalhes();
  produto2.exibirDetalhes();
  produto3.exibirDetalhes();
}

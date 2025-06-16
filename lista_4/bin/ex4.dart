import 'package:lista_4/carrinho.dart';
import 'package:lista_4/produto.dart';

void main() {
  var p1 = Produto(codigo: '111', nome: 'Mouse Gamer', preco: 150.0);
  var p2 = Produto(codigo: '222', nome: 'Monitor 24"', preco: 950.0);
  var p3 = Produto(codigo: '333', nome: 'Cadeira Gamer', preco: 1200.0);
  var carrinho = Carrinho();
  carrinho.adicionarProduto(p1);
  carrinho.adicionarProduto(p2);
  carrinho.adicionarProduto(p3);
  carrinho.listarProdutos();
}

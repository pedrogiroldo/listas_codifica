import 'package:lista_4/produto.dart';

void main() {
  var produto = Produto(codigo: '777', nome: 'Teclado Mecânico', preco: 350.0);
  produto.novoPreco = -50;
  print('Preço atual: R\$ ${produto.preco}');
  produto.novoPreco = 400.0;
  print('Preço atualizado: R\$ ${produto.preco}');
}

import 'package:lista_5/models/produto.dart';

class Carrinho {
  List<Produto> produtos = [];

  void adicionarProduto(Produto produto) {
    produtos.add(produto);
  }

  void removerProduto(Produto produto) {
    produtos.remove(produto);
  }

  double calcularTotal() {
    double total = 0.0;
    for (var produto in produtos) {
      total += produto.preco;
    }
    return total;
  }

  void listarProdutos() {
    print('--- Itens no carrinho ---');
    for (var produto in produtos) {
      print("${produto.nome}: R\$${produto.preco}");
    }
    print('---------------------');
    print("Total do carrinho: ${calcularTotal()}");
  }
}

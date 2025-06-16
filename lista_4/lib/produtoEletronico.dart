import 'package:lista_4/produto.dart';

class ProdutoEletronico extends Produto {
  late int _garantiaMeses;

  ProdutoEletronico({
    required String codigo,
    required String nome,
    required double preco,
    required int garantiaMeses,
  }) : _garantiaMeses = garantiaMeses,
       super(codigo: codigo, nome: nome, preco: preco);

  int get garantiaMeses => _garantiaMeses;

  @override
  void exibirDetalhes() {
    super.exibirDetalhes();
    print('Garantia: $_garantiaMeses meses');
  }
}

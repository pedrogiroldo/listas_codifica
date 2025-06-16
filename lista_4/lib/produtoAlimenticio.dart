import 'package:lista_4/produto.dart';

class ProdutoAlimenticio extends Produto {
  late String _dataValidade;

  ProdutoAlimenticio({
    required String codigo,
    required String nome,
    required double preco,
    required String dataValidade,
  }) : _dataValidade = dataValidade,
       super(codigo: codigo, nome: nome, preco: preco);

  String get dataValidade => _dataValidade;

  @override
  void exibirDetalhes() {
    super.exibirDetalhes();
    print('Data de validade: $_dataValidade');
  }
}

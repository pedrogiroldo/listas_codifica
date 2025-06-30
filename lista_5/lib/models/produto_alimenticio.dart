import 'package:lista_5/models/produto.dart';

class ProdutoAlimenticio extends Produto {
  late final String _dataValidade;

  ProdutoAlimenticio({
    required super.codigo,
    required super.nome,
    required super.preco,
    required String dataValidade,
  }) : _dataValidade = dataValidade;

  String get dataValidade => _dataValidade;

  @override
  String get tipo => 'Alimentício';

  @override
  void exibirDetalhes() {
    super.exibirDetalhes();
    print('Data de validade: $_dataValidade');
  }
}

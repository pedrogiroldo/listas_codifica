import 'package:lista_5/models/produto.dart';
import 'package:lista_5/mixins/rastreavel.dart';

class ProdutoEletronico extends Produto with Rastreavel {
  late final int _garantiaMeses;

  ProdutoEletronico({
    required super.codigo,
    required super.nome,
    required super.preco,
    required int garantiaMeses,
  }) : _garantiaMeses = garantiaMeses;

  int get garantiaMeses => _garantiaMeses;

  @override
  String get tipo => 'Eletrônico';

  @override
  void exibirDetalhes() {
    super.exibirDetalhes();
    print('Garantia: $_garantiaMeses meses');
  }
}

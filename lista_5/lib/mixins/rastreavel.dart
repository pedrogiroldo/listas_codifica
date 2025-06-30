import 'package:lista_5/models/produto.dart';

mixin Rastreavel on Produto {
  void gerarEtiquetaDeRastreio() {
    print('=================================');
    print('ETIQUETA DE ENVIO');
    print('Código: $codigo');
    print('Produto: $nome');
    print('=================================');
  }
}

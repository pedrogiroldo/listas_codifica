import 'package:lista_5/models/produto_eletronico.dart';

void main() {
  // Teste do mixin Rastreavel
  final produtoEletronico = ProdutoEletronico(
    codigo: 'E01',
    nome: 'Smart TV 50',
    preco: 2500.0,
    garantiaMeses: 12,
  );

  print(produtoEletronico.toJson());
}

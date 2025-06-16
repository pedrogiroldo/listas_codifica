import 'package:lista_4/carrinho.dart';
import 'package:lista_4/produtoAlimenticio.dart';
import 'package:lista_4/produtoEletronico.dart';

void main() {
  var eletronico = ProdutoEletronico(
    codigo: 'E01',
    nome: 'Smart TV 50"',
    preco: 2800.0,
    garantiaMeses: 12,
  );
  var alimento = ProdutoAlimenticio(
    codigo: 'A01',
    nome: 'Caixa de Leite',
    preco: 4.50,
    dataValidade: '25/12/2025',
  );
  eletronico.exibirDetalhes();
  print('');
  alimento.exibirDetalhes();

  Carrinho carrinho = Carrinho();

  carrinho.adicionarProduto(eletronico);
  carrinho.adicionarProduto(alimento);

  carrinho.listarProdutos();
}

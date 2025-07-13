import 'package:lista_5/models/produto_alimenticio.dart';
import 'package:lista_5/models/produto_eletronico.dart';
import 'package:lista_5/services/carrinho.dart';
import 'package:test/test.dart';

void main() {
  group('Testes do CarrinhoDeCompras', () {
    test('deve calcular o total como 0 para um carrinho vazio', () {
      final carrinho = Carrinho();
      expect(carrinho.calcularTotal(), 0.0);
    });
    test(
      'deve calcular o total corretamente para um carrinho commúltiplos itens',
      () {
        final carrinho = Carrinho();
        carrinho.adicionarProduto(
          ProdutoAlimenticio(
            codigo: 'A1',
            nome: 'Pão',
            preco: 5.50,
            dataValidade: '...',
          ),
        );
        carrinho.adicionarProduto(
          ProdutoEletronico(
            codigo: 'E1',
            nome: 'Pilha',
            preco: 10.0,
            garantiaMeses: 3,
          ),
        );
        expect(carrinho.calcularTotal(), 15.50);
      },
    );
  });
}

class Produto {
  late String _codigo, _nome;
  late double _preco;
  double? _precoComDesconto;
  double? _percentualDesconto;
  static int numeroDeProdutos = 0;

  Produto({
    required String codigo,
    required String nome,
    required double preco,
  }) {
    _codigo = codigo;
    _nome = nome;
    _preco = preco;
    numeroDeProdutos++;
  }

  String get codigo => _codigo;
  String get nome => _nome;
  double get preco => _preco;

  set novoPreco(double novoPreco) {
    if (novoPreco < 0) {
      print("O preço não pode ser negativo.");
      return;
    }
    _preco = novoPreco;
  }

  void exibirDetalhes() {
    print("--- Detalhes originais ---");
    print("Código: $_codigo");
    print("Nome: $_nome");
    print("Preço: $_preco");

    if (_precoComDesconto != null && _percentualDesconto != null) {
      print("--- Detalhes com desconto ---");
      print("Preço com $_percentualDesconto% de desconto");
      print("Código: $_codigo");
      print("Nome : $_nome");
      print("Preço: $_precoComDesconto");
    }

    print("Total de produtos: $numeroDeProdutos");
  }

  void aplicarDesconto(double percentual) {
    if (percentual < 0 || percentual > 100) {
      throw ArgumentError("Percentual de desconto deve estar entre 0 e 100.");
    }
    final precoComDesconto = _preco - _preco * (percentual / 100);
    _percentualDesconto = percentual;
    _precoComDesconto = precoComDesconto;
  }
}

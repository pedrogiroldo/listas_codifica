class GerenciadorDeEstoque {
  Map<String, int> estoque = {};

  void adicionarProduto(String codigo, int quantidade) {
    estoque[codigo] = (estoque[codigo] ?? 0) + quantidade;
  }

  void removerProduto(String codigo, int quantidade) {
    estoque[codigo] = (estoque[codigo] ?? 0) - quantidade;
  }

  Map<String, int> listarProdutos() {
    return estoque;
  }

  bool verificarDisponibilidade(String codigo, int quantidade) {
    return estoque[codigo] != null && estoque[codigo]! >= quantidade;
  }

  void atualizarEstoque(String codigo, int quantidade) {
    estoque[codigo] = quantidade;
  }

  void limparEstoque() {
    estoque.clear();
  }
}

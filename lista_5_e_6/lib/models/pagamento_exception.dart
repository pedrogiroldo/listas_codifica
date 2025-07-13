class PagamentoException implements Exception {
  final String message;

  PagamentoException(this.message);

  @override
  String toString() => 'PagamentoException: $message';
}

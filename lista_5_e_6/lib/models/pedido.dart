import 'package:lista_5/models/produto.dart';
import 'package:lista_5/services/status_pedido.dart';

class Pedido {
  late List<Produto> _produtos;
  StatusPedido _status = StatusPedido.pendente;

  Pedido({required List<Produto> produtos}) {
    _produtos = produtos;
  }

  List<Produto> get produtos => _produtos;
  set produtos(List<Produto> produtos) {
    _produtos = produtos;
  }

  StatusPedido get status => _status;
  set status(StatusPedido status) {
    _status = status;
  }
}

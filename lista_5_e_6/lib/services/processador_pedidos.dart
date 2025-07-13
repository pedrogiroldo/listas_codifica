import 'package:lista_5/models/pagamento_exception.dart';
import 'package:lista_5/models/pedido.dart';
import 'package:lista_5/services/status_pedido.dart';

class ProcessadorPedidos {
  Future<void> processarPedido({
    required Pedido pedido,
    required Function((bool, String)) onComplete,
  }) async {
    await Future.delayed(Duration(seconds: 3));
    pedido.status = StatusPedido.processando;
    if (pedido.produtos.isEmpty) {
      pedido.status = StatusPedido.falhou;
      onComplete((false, "Pedido sem produtos!"));
      throw PagamentoException("Pedido sem produtos!");
    }
    onComplete((true, "Pedido processado com sucesso!"));
  }
}

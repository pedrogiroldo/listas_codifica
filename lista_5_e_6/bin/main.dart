import 'package:lista_5/models/pedido.dart';
import 'package:lista_5/services/processador_pedidos.dart';

Future<void> main() async {
  try {
    Pedido meuPedido = Pedido(produtos: []);
    ProcessadorPedidos processador = ProcessadorPedidos();
    print('Iniciando processamento do pedido...');
    await processador.processarPedido(
      pedido: meuPedido,
      onComplete: (resultado) {
        if (resultado.$1) {
          print("Sucesso: ${resultado.$2}");
        } else {
          print("Erro: ${resultado.$2}");
        }
      },
    );
    print("Status final do pedido ${meuPedido.status.name}");
  } catch (e) {
    print("Ocorreu um erro inesperado: $e");
  }
}

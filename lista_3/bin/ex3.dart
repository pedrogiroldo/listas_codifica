import 'dart:io';

void criarArquivo({required List<String> lista}) async {
  final arquivo = File('lista_de_compras.txt');
  final sink = arquivo.openWrite(mode: FileMode.append);

  lista.forEach((item) => sink.write("$item\n"));
  await sink.flush();
  await sink.close();
}

void main() {
  print("Bem vindo à lista de compras!");
  List<String> listaDeCompras = [];
  while (true) {
    print("Digite um item da lista de compras (ou \"fim\" para terminar):");
    String compra = stdin.readLineSync() ?? '';
    if (compra == "fim") break;
    if (compra == "") continue;

    listaDeCompras.add(compra);
  }
  criarArquivo(lista: listaDeCompras);
}

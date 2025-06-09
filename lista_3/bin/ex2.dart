import 'dart:io';

/// [num] Número que se deseja ver a tabuada
void exibirTabuada({required double num}) {
  print("Tabuada do $num");
  for (int i = 1; i <= 10; i++) {
    print(
      "$num x $i = ${num * i}",
    ); // calcula o item da tabuada e exibe seu resultado
  }
}

void main() {
  print("Insira o número para ver a tabuada:");
  final double? numeroParaVerTabuada = double.tryParse(
    stdin.readLineSync() ?? '',
  ); // recebe o numero pelo teclado

  if (numeroParaVerTabuada == null) {
    print("Erro na inserção de dados!");
    exit(1);
  }

  exibirTabuada(num: numeroParaVerTabuada);
}

import 'dart:io';

void main() {
  print('Insira o nome:');
  final String nome = stdin.readLineSync() ?? '';
  print('Insira a idade:');
  final String strIdade = stdin.readLineSync() ?? '';
  final int idade = int.parse(strIdade == '' ? '-1' : strIdade);
  print('Insira a cidade:');
  final String cidade = stdin.readLineSync() ?? '';

  if (nome == '' || idade < 0 || cidade == '') {
    print('Dados inválidos!');
    exit(1);
  }

  final String frase = '$nome tem $idade anos e mora em $cidade.';
  print(frase);
}

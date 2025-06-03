import 'dart:io';

void main() {
  print('Insira o 1º número:');
  final String strNum1 = stdin.readLineSync() ?? '';
  print('Insira o 2º número:');
  final String strNum2 = stdin.readLineSync() ?? '';
  if (strNum1 == '' || strNum2 == '') {
    print('Input inválido!');
    exit(1);
  }

  final double num1 = double.parse(strNum1);
  final double num2 = double.parse(strNum2);

  final double soma = num1 + num2;
  final double sub = num1 - num2;
  final double mul = num1 * num2;
  final double div = num1 / num2;

  final double med = (num1 + num2) / 2;
  final double rest = num1 % num2;

  print('soma: $soma');
  print('Subtração: $sub');
  print('Multiplicação: $mul');
  print('Divisão: $div');
  print('Média: $med');
  print('Resto: $rest');
}

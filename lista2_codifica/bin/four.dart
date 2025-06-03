import 'dart:io';

const double fator1 = 9 / 5;
const double fator2 = 32;
const double fator3 = 5 / 9;

void main() {
  print('Insira a temperatura em ºC:');
  final double c = double.parse(stdin.readLineSync() ?? '0');
  final double f = (c * fator1) + fator2;
  final String formatedF = f.toStringAsFixed(2);
  final double c2 = (f - fator2) * fator3;
  final String formatedC2 = c2.toStringAsFixed(2);

  print('Temperatura ºC original: $c');
  print('Temperatura convertida ºF: $formatedF');
  print('Temperatura reconvertida para ºC: $formatedC2');
}

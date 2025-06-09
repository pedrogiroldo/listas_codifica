import 'dart:io';

void main() {
  print('Insira o orçamento:');
  final double orcamento = double.parse(stdin.readLineSync() ?? '0');

  var item1;
  var item2;
  var item3;

  print('Insira o valor do item 1:');
  item1 = double.parse(stdin.readLineSync() ?? '0');

  print('Insira o valor do item 2:');
  item2 = double.parse(stdin.readLineSync() ?? '0');

  print('Insira o valor do item 3:');
  item3 = double.parse(stdin.readLineSync() ?? '0');

  if (item1 + item2 + item3 > orcamento) {
    print('Orçamento estourado!');
    print('Custo total: ${item1 + item2 + item3}');
    exit(0);
  }
  print('Dentro do orçamento!');
  print('Custo total: ${item1 + item2 + item3}');
}

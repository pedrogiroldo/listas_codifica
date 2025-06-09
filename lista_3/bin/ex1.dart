import 'dart:io';

double calcularMedia({
  required double nota1,
  required double nota2,
  required double nota3,
}) {
  if (nota1 > 10 ||
      nota1 < 0 ||
      nota2 > 10 ||
      nota2 < 0 ||
      nota3 > 10 ||
      nota3 < 0) {
    print("Erro: Nota inválida inserida. As notas devem estar entre 0 e 10.");
    exit(1);
  }
  final double media = (nota1 + nota2 + nota3) / 3;
  return media;
}

void main() {
  print("Insira a primeira nota:");
  final double? nota1 = double.tryParse(stdin.readLineSync() ?? '');
  print("Insira a segunda nota:");
  final double? nota2 = double.tryParse(stdin.readLineSync() ?? '');
  print("Insira a terceira nota:");
  final double? nota3 = double.tryParse(stdin.readLineSync() ?? '');

  if (nota1 == null || nota2 == null || nota3 == null) {
    print("Erro na inserção de dados!");
    exit(1);
  }

  final double media = calcularMedia(nota1: nota1, nota2: nota2, nota3: nota3);

  print("Média: $media");
}

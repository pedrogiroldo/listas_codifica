import 'package:lista_4/produto.dart';

void main() {
  Produto produto1 = Produto(
    nome: "iPhone 2G",
    preco: 10000000000,
    codigo: "1432dsadsa342424",
  );

  Produto produto2 = Produto(
    nome: "Galaxy S20000",
    preco: 2.50,
    codigo: "cnjksbfds78329fhdsj",
  );

  print("--- Produto 1 ---");
  print("Código: ${produto1.codigo}");
  print("Nome: ${produto1.nome}");
  print("Preço: ${produto1.preco}");

  print(""); // blank line for separation

  print("--- Produto 2 ---");
  print("Código: ${produto2.codigo}");
  print("Nome: ${produto2.nome}");
  print("Preço: ${produto2.preco}");
}

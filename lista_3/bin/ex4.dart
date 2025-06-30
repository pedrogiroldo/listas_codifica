// para lembrar: future == promise
import 'dart:io';

Future<List<String>> lerConfiguracoes() async {
  final List<String> conteudo = await File(
    "config.txt",
  ).readAsString().then((String contents) => contents.split("\n").where((line) => line.trim().isNotEmpty).toList());

  return conteudo;
}

void printConfiguracoes(List<String> configuracoes) {
  final Iterable<List<String>> configs = configuracoes.map(
    (configuracao) => configuracao.split("="),
  );

  for (var config in configs) {
    print("${config[0]}: ${config[1]}");
  }
}

void main() async {
  final List<String> configuracoes = await lerConfiguracoes();
  printConfiguracoes(configuracoes);
}

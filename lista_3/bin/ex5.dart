/**
Bem vindo caro leitor,

Já que esse exercício vai dar trabalho
ele vai ser muito bem escrito.

As funções terão seus níveis de abstração definidos
começando do mais abstrato: a main, até as funções de menores abstrações


Será utilizado a possibilidade de hoisting oferecida pelo Dart,
e por isso, você encontrará funções sendo chamadas antes de sua declaração.

Isso serve para que os desenvolvedores envolvidos no programa (não é muito o caso deste)
se preocupem apenas com o nível de abstração que lhes interessa.

Os conceitos utilizados na construção deste programa são sugeridos por Robert C. Martin
em seu conhecido livro: Código Limpo.

Have some fun

Atenciosamente, Pedro Giroldo.
*/

void main() {
  mainProgram();
}

void mainProgram() {
  while (true) {
    cleanScreen();
  }
}

void printOptions() {
  print("Escolha uma opção:");
  print("1. Adicionar tarefa");
  print("2. Listar tarefas");
  print("3. Marcar tarefa como concluida");
  print("4. Sair");
}

void cleanScreen() {
  print("\x1B[2J\x1B[0;0H");
}

import 'dart:io';

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
    final taskFileExists = verifyIfTasksFileExists();
    if (!taskFileExists) createTaskFile();

    cleanScreen();
    printOptions();
    optionsHandler();
  }
}

void printOptions() {
  print("Escolha uma opção:");
  printEmptyLine();
  print("1. Adicionar tarefa");
  print("2. Listar tarefas");
  print("3. Marcar tarefa como concluida");
  print("4. Sair");
  printEmptyLine();
}

void optionsHandler() {
  final choosedOption = stdin.readLineSync() ?? "";

  switch (choosedOption) {
    case "1":
      {
        handleAddTask();
      }
      break;
    case "2":
      {
        handleListTasks();
      }
      break;
    case "3":
      {
        handleMarkTaskAsCompleted();
      }
      break;
    case "4":
      {
        exit(0);
      }
    default:
      break;
  }
}

void handleAddTask() {
  cleanScreen();

  print("Digite a tarefa que deseja adicionar:");
  final task = stdin.readLineSync() ?? "";
  if (task.isEmpty) {
    print("Tarefa não pode ser vazia!");
    return;
  }
  addTaskToFile(task: task);
}

void handleListTasks() {
  final tasks = getTasksFromFile();

  printTasks(tasks);

  printEmptyLine();

  frozenCurrentViewAndWaitForUserInputToReturnToMainMenu();
}

void handleMarkTaskAsCompleted() {
  final tasks = getTasksFromFile();

  if (tasks.isEmpty) {
    print("Nenhuma tarefa encontrada para marcar como concluída.");
    return;
  }

  printTasks(tasks);

  print("Digite o número da tarefa que deseja marcar como concluída:");
  final taskNumber = int.tryParse(stdin.readLineSync() ?? "");

  addCompletedOnTask(tasks, taskNumber);

  print("Tarefa marcada como concluída com sucesso!");
}

void addCompletedOnTask(List<String> tasks, int? taskNumber) {
  if (taskNumber == null || taskNumber < 1 || taskNumber > tasks.length) {
    print("Número de tarefa inválido.");
    return;
  }

  tasks[taskNumber - 1] = "${tasks[taskNumber - 1]} (concluído)";
  File("tasks.txt").writeAsStringSync("${tasks.join("\n")}\n");
}

void printTasks(List<String> tasks) {
  if (tasks.isEmpty) {
    print("Nenhuma tarefa encontrada.");
    return;
  }

  cleanScreen();

  print("Tarefas:");
  printEmptyLine();
  for (var i = 0; i < tasks.length; i++) {
    print("${i + 1}. ${tasks[i]}");
  }
}

void frozenCurrentViewAndWaitForUserInputToReturnToMainMenu() {
  print("Pressione 'q' para voltar ao menu principal");
  while (true) {
    final input = stdin.readLineSync() ?? "";
    if (input.toLowerCase() == "q") {
      break;
    }
  }
}

void addTaskToFile({required String task}) {
  final file = File("tasks.txt");
  file.writeAsStringSync("$task\n", mode: FileMode.append);
  print("Tarefa adicionada com sucesso!");
}

List<String> getTasksFromFile() {
  final file = File("tasks.txt");

  final tasks = file.readAsLinesSync();
  return tasks.where((task) => task.trim().isNotEmpty).toList();
}

bool verifyIfTasksFileExists() {
  final file = File("tasks.txt");
  return file.existsSync();
}

void createTaskFile() {
  final file = File("tasks.txt");
  file.createSync();
}

void printEmptyLine() {
  print("");
}

void cleanScreen() {
  print("\x1B[2J\x1B[0;0H");
}

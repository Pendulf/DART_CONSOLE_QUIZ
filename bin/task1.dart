import 'dart:io';

void main() {

  final List<String> Questions = [
    "Какой тип данных используется для динамического типа?",
    "Какой метод используется для чтения ввода из консоли?",
    "Как создать список (List) целых чисел?"
    ];

  final List<String> Options = [
    " 1. var \n 2. dynamic \n 3. object \n 4. int",
    " 1. Console.read() \n 2. stdin.readLineSync() \n 3. input.readLine() \n 4. readInput()",
    " 1. List<int> numbers = {}; \n 2. Array<int> numbers = []; \n 3. List<int> numbers = []; \n 4. int[] numbers = [];",
    ];

  final Ansvers = {
    Questions[0] : 2,
    Questions[1] : 2,
    Questions[2] : 3
  };

  int count = 0;
  print("Вводите номер правильного ответа");
  for (int i = 0; i < Questions.length; i++) {
   
    print(Questions[i]);
    print(Options[i]);
    stdout.write('Ответ: ');
    int answer = int.parse(stdin.readLineSync()!);
    if (answer == Ansvers[Questions[i]]) {
      count++;
    } 
  }
  print("Количество правильных ответов: $count");
}
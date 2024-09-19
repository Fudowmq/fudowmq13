// Вопросы:
// 1) 
// в цикле while сначала проверяеться условие если оно истинно, выполняется тело цикла 
// В цикле do while сначала выполняется тело цикла, а затем проверяется условие
// 
// 2)
// break: используется для выхода из цикла 
// continue: используется для пропуска текущей итерации цикла и перехода к следующей
// 
// 3)
// switch-case:
// Используется для выбора одного из нескольких вариантов выполнения кода
// 
// 4)
// Примитивные типы данных: например, int, String
// Перечисления (enum)
// 
// 5)
// Списки:
// var [a, b] = [1, 2];
// Засписи: 
// var (x, y) = (1, 2);
// Коллекций (для списков):
// var [first, ...rest] = [1, 2, 3, 4];
// 
// 6)
// Метки в `switch-case` позволяют объединять несколько кейсов и управлять их выполнением через операторы 
//`break` и `continue`
// 
// 7)
// Сопоставление с шаблоном позволяет проверять и извлекать значения из объектов по их структуре,
// обычно используется в `switch-case` 
// 
// 8)
// Коллекции:
// var [a, b, c] = [1, 2, 3];
// Классы: 
// var (a, b) = CustomClass(1, 2);
// Записи:
// var (x, y) = (1, 2);
// 
// 9)
// С помощью цикла for для итерации по парам ключ-значение:
// for (var entry in map.entries) {
//   print('${entry.key}: ${entry.value}');
// }
// 
// 10)
// Можно деструктурировать записи:
// var (x, y) = (1, 2);

import 'dart:io';

List<num> applyOperation(List<num> numbers, num Function(num) operation) {
  return numbers.map(operation).toList();
}

void main() {
  print("Введите список чисел через пробелы: ");
  String? input = stdin.readLineSync();

  List<num> numbers = input!.split(" ").map(num.parse).toList();

  print("Выберите операцию: ");
  print("1 - Умножить на 2");
  print("2 - Возвести в квадрат");
  String? choice = stdin.readLineSync();

  List<num> result;

  if (choice == '1') {
    result = applyOperation(numbers,(num x) => x * 2 );
  } else if (choice == '2') {
    result = applyOperation(numbers, (num x) => x * x);  
  } else {
    print("Неверный выбор операций.");
    return;
  }

  print("Результат: $result");
}



Function createCounter() {
  int count = 0;

  return() {
    count++;
    return count;
  };
}

void main () {
  var counter = createCounter();

  print(counter());
  print(counter());
  print(counter());
}
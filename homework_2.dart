void main() {
  print("--- Завдання 1: Математичні оператори ---");
  task1();
  print("\n--- Завдання 2: Оператори порівняння ---");
  task2();
  print("\n--- Завдання 3: Логічні оператори ---");
  task3();
  print("\n--- Завдання 4: Тернарний оператор ---");
  task4();
  print("\n--- Завдання 5: Оператори присвоєння ---");
  task5();
  print("\n--- Завдання 6: Умовні конструкції if/else ---");
  task6();
  print("\n--- Завдання 7: Конструкція switch statement ---");
  task7();
  print("\n--- Завдання 8: Цикли for ---");
  task8();
  print("\n--- Завдання 9: Цикл while ---");
  task9();
  print("\n--- Завдання 10: Break і Continue ---");
  task10();
}

// Завдання 1: Математичні оператори
void task1() {
  double width = 18.4;
  double height = 30.9;

  double area = width * height;
  double perimeter = 2 * (width + height);

  print("Площа прямокутника: $area");
  print("Периметр прямокутника: $perimeter");

  int fullSquares = area ~/ 1;
  print("Кількість повних квадратів 1x1, що вміщається у площу: $fullSquares");
}

// Завдання 2: Оператори порівняння
void task2() {
  int number = 75; // Можете змінити це значення для тестування
  print("Число: $number");

  print("Число більше за 50: ${number > 50}");
  print("Число менше за 100: ${number < 100}");
  print("Число ділиться на 5 без залишку: ${number % 5 == 0}");
}

// Завдання 3: Логічні оператори
void task3() {
  bool hasMoney = true;
  bool isStoreOpen = false;
  print("Є гроші: $hasMoney, Магазин відкритий: $isStoreOpen");

  bool canBuy = hasMoney && isStoreOpen;
  print("Чи можна зробити покупку: $canBuy");

  bool haveToWait = !canBuy; // Якщо не можна купити, треба чекати
  print("Чи потрібно почекати: $haveToWait");
}

// Завдання 4: Тернарний оператор
void task4() {
  int temperature = 5; // Можете змінити це значення для тестування
  print("Температура: $temperature°C");

  String weather = temperature > 25 ? "Тепло" : "Прохолодно";
  print(weather);

  // Другий тернарний оператор
  String detailedWeather = temperature < 10 ? "Дуже холодно" : "Не дуже холодно";
  print(detailedWeather);
}

// Завдання 5: Оператори присвоєння
void task5() {
  double score = 0;
  int correctAnswers = 17;
  int mistakes = 3;
  int totalQuestions = 20;

  score += correctAnswers * 10;
  score -= mistakes * 5;
  score *= 2;
  score /= totalQuestions;

  print("Остаточний результат: $score");
}

// Завдання 6: Умовні конструкції if/else
void task6() {
  int examScore = 56; // Можете змінити це значення для тестування
  print("Екзаменаційна оцінка: $examScore");

  if (examScore > 90) {
    print("Відмінно");
  } else if (examScore >= 75) {
    print("Добре");
  } else if (examScore >= 60) {
    print("Задовільно");
  } else {
    print("Не здано");
    if (examScore < 20) {
      print("Повторити курс");
    }
  }
}

// Завдання 7: Конструкція switch statement
void task7() {
  int dayNumber = 6; // Можете змінити це значення для тестування
  print("Номер дня: $dayNumber");

  switch (dayNumber) {
    case 1:
      print("Понеділок");
      break;
    case 2:
      print("Вівторок");
      break;
    case 3:
      print("Середа");
      break;
    case 4:
      print("Четвер");
      break;
    case 5:
      print("П'ятниця");
      break;
    case 6:
      print("Субота");
      print("Вихідний день 🎉");
      break;
    case 7:
      print("Неділя");
      print("Вихідний день 🎉");
      break;
    default:
      print("Невірний номер дня");
  }
}

// Завдання 8: Цикли for
void task8() {
  print("Всі числа від 1 до 10:");
  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    print(i);
    sum += i;
  }

  print("\nТільки парні числа:");
  for (int i = 2; i <= 10; i += 2) {
    print(i);
  }

  print("\nСума чисел від 1 до 10: $sum");
}

// Завдання 9: Цикл while
void task9() {
  int number = 10;
  while (number >= 0) {
    if (number % 2 == 0) {
      print("Парне число: $number");
    } else {
      print("Непарне число: $number");
    }
    number--;
  }
}

// Завдання 10: Break і Continue
void task10() {
  for (int i = 1; i <= 20; i++) {
    if (i % 3 == 0) {
      continue;
    }
    if (i > 15) {
      break;
    }
    print(i);
  }
} 
import 'dart:math';

void main() {
  // 1. Створіть список numbers зі 100 елементів. Кожен елемент — випадкове число від 0 до 100
  List<int> numbers = List.generate(100, (_) => Random().nextInt(101));

  // 2. Виведіть цей список на екран
  print('Список numbers:');
  print(numbers);

  // 3. Виведіть на екран 65-й елемент списку
  if (numbers.length >= 65) {
    print('65-й елемент: ${numbers[64]}');
  } else {
    print('У списку менше 65 елементів!');
  }

  // 4. Вставте число 1000000000 на 50-ту позицію списку
  if (numbers.length >= 50) {
    numbers.insert(49, 1000000000);
    print('Після вставки 1000000000 на 50-ту позицію:');
    print(numbers);
  }

  // 5. Видаліть зі списку елементи зі значеннями: 24, 45, 66, 88
  numbers.removeWhere((element) => element == 24 || element == 45 || element == 66 || element == 88);
  print('Після видалення 24, 45, 66, 88:');
  print(numbers);

  // 6. Порахуйте суму всіх елементів, що діляться на 3 без залишку
  int sumDiv3 = 0;
  for (var n in numbers) {
    if (n % 3 == 0) {
      sumDiv3 += n;
    }
  }
  print('Сума елементів, що діляться на 3 без залишку: $sumDiv3');

  // 7. Створіть порожній список temp. Додайте до temp лише ті елементи, що діляться на 2 без залишку
  List<int> temp = [];
  for (var n in numbers) {
    if (n % 2 == 0) {
      temp.add(n);
    }
  }
  print('Довжина списку temp (елементи, що діляться на 2): ${temp.length}');
} 
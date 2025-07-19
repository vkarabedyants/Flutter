import '../names.dart';

void main() {
  // Створюємо множини з імен
  Set<String> uniqueNames1 = Set.from(ukrainianNames1);
  Set<String> uniqueNames2 = Set.from(ukrainianNames2);

  // 1. Спільні імена
  Set<String> commonNames = uniqueNames1.intersection(uniqueNames2);
  print('Кількість спільних імен: ${commonNames.length}');

  // 2. Імена, що є в uniqueNames1, але немає в uniqueNames2
  Set<String> onlyIn1 = uniqueNames1.difference(uniqueNames2);
  print('Імена, що є лише в першому списку:');
  print(onlyIn1);

  // 3. Імена, що є в uniqueNames2, але немає в uniqueNames1
  Set<String> onlyIn2 = uniqueNames2.difference(uniqueNames1);
  print('Імена, що є лише в другому списку:');
  print(onlyIn2);
} 
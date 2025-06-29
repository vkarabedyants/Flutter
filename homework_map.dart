import 'package:word_generator/word_generator.dart';

void main() async {
  // 1. Створіть список nounsList із 50 випадкових слів
  final wordGen = WordGenerator();
  List<String> nounsList = await wordGen.randomNouns(50);
  print('Список іменників:');
  print(nounsList);

  // 2. Створіть Map<String, int> nounsMap, де ключ — слово, значення — кількість символів
  Map<String, int> nounsMap = {
    for (var word in nounsList) word: word.length
  };

  // 3. Створіть tempNouns, де довжина слова — парне число
  Map<String, int> tempNouns = {
    for (var entry in nounsMap.entries)
      if (entry.value % 2 == 0) entry.key: entry.value
  };

  // 4. Виведіть всі ключі зі tempNouns
  print('Ключі зі tempNouns (парна довжина):');
  print(tempNouns.keys);
} 
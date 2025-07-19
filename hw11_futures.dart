import 'dart:async';

void main() async {
  print('=== Task 1: Асинхронне отримання імені ===');
  String name = await fetchName();
  print('Мене звати $name');

  print('\n=== Task 2: Асинхронне отримання віку ===');
  String age = await fetchAge();
  print('Мені $age');

  print('\n=== Task 3: Послідовне виконання Future ===');
  await sequentialExecution();

  print('\n=== Task 4: Паралельне виконання Future ===');
  await parallelExecution();

  print('\n=== Task 5: Зворотний відлік з затримкою ===');
  String result = await delayedCountdown(5);
  print(result);
}

// Task 1: Асинхронне отримання імені
Future<String> fetchName() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Андрій';
}

// Task 2: Асинхронне отримання віку
Future<String> fetchAge() async {
  await Future.delayed(Duration(milliseconds: 1500));
  int age = 25;
  return getAgeString(age);
}

// Допоміжна функція для правильного відмінювання слова "рік"
String getAgeString(int age) {
  if (age % 10 == 1 && age % 100 != 11) {
    return '$age рік';
  } else if (age % 10 >= 2 && age % 10 <= 4 && (age % 100 < 10 || age % 100 >= 20)) {
    return '$age роки';
  } else {
    return '$age років';
  }
}

// Task 3: Послідовне виконання Future
Future<void> sequentialExecution() async {
  Stopwatch stopwatch = Stopwatch()..start();
  
  String name = await fetchName();
  String age = await fetchAge();
  
  stopwatch.stop();
  
  print('Послідовне виконання:');
  print('Ім\'я: $name');
  print('Вік: $age');
  print('Час виконання: ${stopwatch.elapsedMilliseconds} мс');
}

// Task 4: Паралельне виконання Future
Future<void> parallelExecution() async {
  Stopwatch stopwatch = Stopwatch()..start();
  
  List<dynamic> results = await Future.wait([
    fetchName(),
    fetchAge(),
  ]);
  
  stopwatch.stop();
  
  print('Паралельне виконання:');
  print('Ім\'я: ${results[0]}');
  print('Вік: ${results[1]}');
  print('Час виконання: ${stopwatch.elapsedMilliseconds} мс');
}

// Task 5: Зворотний відлік з затримкою
Future<String> delayedCountdown(int seconds) async {
  for (int i = seconds; i > 0; i--) {
    print('$i...');
    await Future.delayed(Duration(seconds: 1));
  }
  return 'Старт!';
}

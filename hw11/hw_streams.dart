import 'dart:async';

void main() async {
  print('=== Task 6: Стрім з чисел (fromIterable) ===');
  await streamFromIterable();

  print('\n=== Task 7: Зворотний відлік зі стріму (periodic) ===');
  await streamPeriodic();

  print('\n=== Task 8: Робота з StreamController ===');
  await streamControllerExample();
}

// Task 6: Стрім з чисел (fromIterable)
Future<void> streamFromIterable() async {
  // Створюємо Stream з чисел від 1 до 5
  Stream<int> numberStream = Stream.fromIterable([1, 2, 3, 4, 5]);

  print('Використання await for:');
  await for (int number in numberStream) {
    print('Число: $number');
  }

  // Створюємо новий Stream для listen (оскільки попередній вже використаний)
  Stream<int> numberStream2 = Stream.fromIterable([1, 2, 3, 4, 5]);
  
  print('Використання listen:');
  numberStream2.listen(
    (int number) {
      print('Число: $number');
    },
    onDone: () {
      print('Стрім завершено (listen)');
    },
  );
}

// Task 7: Зворотний відлік зі стріму (periodic)
Future<void> streamPeriodic() async {
  // Створюємо Stream з періодичними значеннями
  Stream<int> countdownStream = Stream.periodic(
    Duration(seconds: 1),
    (int index) => index + 1,
  ).take(10); // Обмежуємо до 10 чисел

  print('Зворотний відлік:');
  await for (int number in countdownStream) {
    print('$number...');
  }
  print('Відлік завершено!');
}

// Task 8: Робота з StreamController
Future<void> streamControllerExample() async {
  // Створюємо StreamController
  StreamController<String> controller = StreamController<String>();

  // Прослуховуємо стрім
  controller.stream.listen(
    (String value) {
      print('Отримано: $value');
    },
    onDone: () {
      print('Стрім завершено');
    },
    onError: (error) {
      print('Помилка: $error');
    },
  );

  // Додаємо значення до контролера
  print('Додаємо значення до стріму...');
  controller.add('Hello');
  await Future.delayed(Duration(milliseconds: 500));
  
  controller.add('World');
  await Future.delayed(Duration(milliseconds: 500));
  
  controller.add('Dart');
  await Future.delayed(Duration(milliseconds: 500));
  
  controller.add('Streams');
  await Future.delayed(Duration(milliseconds: 500));

  // Закриваємо контролер
  print('Закриваємо контролер...');
  await controller.close();
}

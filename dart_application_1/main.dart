import 'dart:io';

void main() {
  int x1 = 0, temp = 0, steps = 0;
  print('Введите координаты фотографии. \n Координаты точки по Оси x:');
  int x = int.parse(stdin.readLineSync()!);
  print('Координаты точки по Оси y:');
  int y = int.parse(stdin.readLineSync()!);
  print(
      'Если человек знает где находится фото: кол-во шагов - ${(y > 0) ? x + y : x - y}');
  while (!(x == x1)) {
    temp++;
    (temp % 2 == 0) ? x1 = x1 - temp : x1 = x1 + temp;
    steps = steps + temp;
  }
  print(
      'Если человек не знает где находится фото: кол-во шагов - ${(steps + y)}');
}

import 'dart:io';


void main() {
  print('Enter 2 numbers');
  var num1 = int.parse(stdin.readLineSync()!);
  var num2 = double.parse(stdin.readLineSync()!);
  var sum = num1 + num2;
  print('sum = $sum');
}

//Factorial

import 'dart:io';

void main() {
  var N = int.parse(stdin.readLineSync()!);
  var res = 1;

  for(int i=N; i>0; i--){
    res *= i;
  }

  print(res);
}
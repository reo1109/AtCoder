//Product of 3 Integers

import 'dart:io';

void main() {
  var N = int.parse(stdin.readLineSync()!);
  var A = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  var result = 0;

  for(int i=0; i<N; i++) {
    result += A[i];
  }

  print(result);
}
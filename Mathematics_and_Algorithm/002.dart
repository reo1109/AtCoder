//Sum of 3 Integers

import 'dart:io';

void main() {
  var A = stdin.readLineSync()!.split(" ").map(int.parse).toList();

  print(A[0] + A[1] + A[2]);
}
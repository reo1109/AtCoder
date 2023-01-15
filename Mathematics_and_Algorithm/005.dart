//Modulo 100

import 'dart:io';

void main() {
  var N = int.parse(stdin.readLineSync()!);
  var a = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  var sum = 0;

  for(int i=0; i<N; i++) {
    sum += a[i];
  }

  print(sum % 100);
}
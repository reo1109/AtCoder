//Welcome to AtCoder

import 'dart:io';

void main() {
  var a = int.parse(stdin.readLineSync()!);
  var bc = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  var s = stdin.readLineSync()!;

  print("${a + bc[0] + bc[1]} $s");
}
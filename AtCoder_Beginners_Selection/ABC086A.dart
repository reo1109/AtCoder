//Product

import 'dart:io';

void main() {
  var ab = stdin.readLineSync()!.split(" ").map(int.parse).toList();

  if(ab[0] % 2 == 0 || ab[1] % 2 == 0) {
    print('Even');
  } else print('Odd');
}
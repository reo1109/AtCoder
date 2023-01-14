//Coins

import 'dart:io';

void main() {
  var A = int.parse(stdin.readLineSync()!);
  var B = int.parse(stdin.readLineSync()!);
  var C = int.parse(stdin.readLineSync()!);
  var total = int.parse(stdin.readLineSync()!);
  var cnt = 0;

  for(int i=0; i<=A; i++){
    for(int j=0; j<=B; j++){
      for(int k=0; k<=C; k++){
        if(total == i * 500 + j * 100 + k * 50) cnt++;
      }
    }
  }

  print(cnt);
}
//Divisor Enumeration

import 'dart:io';
import 'dart:math';

void main() {
  var N = int.parse(stdin.readLineSync()!);

  for(int i=1; i<=sqrt(N).toInt(); i++) {
    if(N % i == 0){
      print(i);
      if(N / i != i){
        print(N~/i);
      }
    }
  }
}
//Factorization

import 'dart:io';
import 'dart:math';

void main() {
  var N = int.parse(stdin.readLineSync()!);

  while(N % 2 == 0){
    stdout.write('2 ');
    N ~/= 2;
  }

  for(int i=3; pow(i, 2) <= N; i+=2){
    if(N == 1) break;
    while(N % i == 0){
      stdout.write('$i ');
      N ~/= i;
    }
  }

  if(N != 1) stdout.write(N);
}
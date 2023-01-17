//Combination Easy

import 'dart:io';

void main() {
  var nr = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  var n = nr[0];
  var r = nr[1];
  var cnt = 0;

  for(int i=n-1; cnt!=r; i--){
    n *= i;
    cnt++;
  }

  for(int i=r-1; i>0; i--){
    r *= i;
  }

  print(n ~/ r);
}
//Card Game for Two

import 'dart:io';

void main() {
  var N = int.parse(stdin.readLineSync()!);
  var a = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  int AliceP = 0, BobP = 0;
  int i = 0;

  a.sort((n1, n2) => n2 - n1);

  while(i < N){
    for(i=0; i<a.length; i++){
      if(i % 2 == 0){
        AliceP += a[i];

      }else {
        BobP += a[i];
      }
    }
  }

  print(AliceP-BobP);
}
//Otoshidama

import 'dart:io';

void main() {
  var NY = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  var N = NY[0];
  var Y = NY[1];
  var flag = false;

  for(int i=0; i<=N; i++){
    for(int j=0; j<=N; j++){
      if(i*10000 + j*5000 + (N-i-j)*1000 == Y && N-i-j >= 0){
        print("$i $j ${N-i-j}");
        flag = true;
        break;
      }
    }
    if(flag) break;
  }
  
  if(flag == false) print("-1 -1 -1");
  
}
//Brute Force 2

import 'dart:io';

void main() {
  var NS = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  var A = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  var N = NS[0];
  var S = NS[1];
  var flag = false;

  for(int i=0; i<N-1; i++){
    for(int j=i+1; j<N; j++){
      if(A[i] + A[j] == S) {
        flag = true;
        break;
      }
    }
    if(flag) break;
  }

  if(flag) print('Yes');
  else print('No');
}
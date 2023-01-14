//Shift only

import 'dart:io';

void main() {
  final N = int.parse(stdin.readLineSync()!);
  var A = stdin.readLineSync()!.split(" ").map(double.parse).toList();
  var cnt = 0;
  var result;

  for(int i=0; i<N; i++){
    cnt = 0;
    while(true) {
      if(A[i] % 2 == 1 || A[i] == 0) break;
      else {
        A[i] /= 2;
        cnt++;
      }
    }
    if(i == 0) result = cnt;
    else if(result > cnt) result = cnt;
  }

  print(result);

}
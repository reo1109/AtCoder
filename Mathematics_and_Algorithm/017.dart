//Least Common Multiple of N Integers

import 'dart:convert';
import 'dart:io';

void main() async{
  var N = int.parse(stdin.readLineSync()!);
  var inputA = stdin.transform(utf8.decoder).transform(LineSplitter()).take(N);
  var A = [];

  await for(final point in inputA) {
    A = point.split(" ").map(int.parse).toList();
  }

  A.sort();
  var ans = A[0];

  for(int i=0; i<N; i++){
    ans = ans ~/ gcd(ans, A[i]) * A[i]; 
  }

  print(ans);
  
}

int gcd (int A, int B) {
  var ex;

  while(A%B != 0){
      ex = A % B;
      A = B;
      B = ex;
  }

  return B;
}
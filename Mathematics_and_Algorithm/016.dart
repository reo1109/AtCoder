//Greatest Common Divisor of N Integers

import 'dart:io';
import 'dart:convert';

void main() async {
  var N = int.parse(stdin.readLineSync()!);
  final inputA = stdin.transform(utf8.decoder).transform(LineSplitter()).take(N);
  var A = [];

  await for (final point in inputA) {
    A = point.split(" ").map(int.parse).toList();
  }

  A.sort();
  var ans = A[0];

  for(int i=1; i<N; i++){
    ans = gcd(ans, A[i]);
  }

  print(ans);
}

int gcd (int A, int B) {
  var ex;

  while(A%B != 0){
      ex = A % B;
      A = B;
      B = ex;
  };

  return B;
}
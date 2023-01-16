//Calculate GCD

import 'dart:io';

void main() {
  var AB = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  var A = AB[1];
  var B = AB[0];
  var ex;

  if(A > B) {
    while(A%B != 0){
      ex = A % B;
      A = B;
      B = ex;
    }

    print(B);
  }

  if(A < B) {
    while(B%A != 0){
      ex = B % A;
      B = A;
      A = ex;
    }

    print(A);
  }

  if(A == B) print(A);
}

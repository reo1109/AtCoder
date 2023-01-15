//Print Prime Numbers

import 'dart:io';

void main() {
  var N = int.parse(stdin.readLineSync()!);

  for(int i=2; i<N; i++) {
    if(primejudge(i)) stdout.write('$i ');
  }
} 

bool primejudge(int n) {
  var flag = true;

  for(int i=2; i<n; i++){
    if(n % i == 0){
      flag = false;
    }
  }

  return flag;
}
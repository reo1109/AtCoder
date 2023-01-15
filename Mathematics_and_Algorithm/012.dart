//Primality Test


import 'dart:io';

void main() {
  var N = int.parse(stdin.readLineSync()!);
  
  print(primejudge(N) ? 'Yes': 'No');
  
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
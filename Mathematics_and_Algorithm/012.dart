//Primality Test


import 'dart:io';
import 'dart:math';

void main() {
  var N = int.parse(stdin.readLineSync()!);
  var flag = true;
  
  for(int i=2; i<sqrt(N).toInt(); i++){
    if(N % i == 0){
      flag = false;
      break;
    }
  }
  print((flag) ? 'Yes' : 'No');
}
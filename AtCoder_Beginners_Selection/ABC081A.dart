//Placing Marbles

import 'dart:io';

void main() {
  final s = stdin.readLineSync()!;
  var cnt = 0;

  for(int i=0; i<s.length; i++){
    if(s[i] == '1') cnt++;
  }

  print(cnt);
}
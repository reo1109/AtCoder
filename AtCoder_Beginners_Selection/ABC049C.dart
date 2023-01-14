//白昼夢

import 'dart:io';

void main() {
  String S = stdin.readLineSync()!;
  List T = ['dream', 'dreamer', 'erase', 'eraser'];
  var rT = [];
  var flag1 = true;
  var flag2 = false;

  S = S.split('').reversed.join();
  for(int k=0; k<4; k++){
    rT.add(reverse(T[k]));
  }

  while(S.isNotEmpty){
    flag2 = false;
    for(int i=0; i<4; i++){
      if(S.startsWith(rT[i])){
        S = S.substring(rT[i].length);
        flag2 = true;
      }
    }
    if(!flag2){
      flag1 = false;
      break;
    }
  }
  
  if(flag1) print('YES');
  else print('NO');
}

String reverse(String s){
  var rl = [];
  var rs;

  for(int i=0; i<s.length; i++){
    rl.add(s[i]);
  }

  rs = rl.reversed.join();

  return rs;
}
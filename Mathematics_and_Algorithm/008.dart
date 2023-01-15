//Brute Force 1

import 'dart:io';

void main() {
  var NS = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  var N = NS[0];
  var S = NS[1];
  var cnt = 0;

  for(int i=1; i<=N; i++){
    for(int j=1; j<=N; j++){
      if(i + j <= S) cnt++;
    }
  }

  print(cnt);
}
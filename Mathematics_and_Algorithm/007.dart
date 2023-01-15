//Number of Multiples 1

import 'dart:io';

void main() {
  var NXY = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  var N = NXY[0];
  var X = NXY[1];
  var Y = NXY[2];
  var cnt = 0;

  for(int i=1; i<=N; i++) {
    if(i % X == 0) cnt++;
    else if(i % Y == 0) cnt++;
  }

  print(cnt);
}
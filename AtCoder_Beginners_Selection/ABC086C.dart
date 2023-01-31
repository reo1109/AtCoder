//Traveling

import 'dart:convert';
import 'dart:io';

void main() async {
  var N = int.parse(stdin.readLineSync()!);
  var lines = stdin.transform(utf8.decoder).transform(LineSplitter());

  var txy = [];
  var can = true;
  var cnt = 1;
  var prev = [0, 0, 0];
  var diff = 0;
  var dist = 0;

  await for(var line in lines) {
    txy = line.split(" ").map(int.parse).toList();
    diff = (txy[0]-prev[0]);
    dist = ((txy[1] - prev[1]).abs() + (txy[2] - prev[2]).abs());
    if(diff >= dist && diff % 2 == dist % 2) {
      cnt++;
      if(cnt > N) {
        break;
      }
    } else {
      can = false;
      break;
    }
  }

  print(can ? "Yes" : "No");

  
}
//Kagami Mochi

import 'dart:io';

void main() {
  var N = int.parse(stdin.readLineSync()!);
  List d = [];

  for(int i=0; i<N; i++){
    d.add(int.parse(stdin.readLineSync()!));
  }

  var NSet = Set.from(d);

  print(NSet.length);
}
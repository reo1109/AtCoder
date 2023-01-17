//Choose Cards 1

import 'dart:io';
import 'dart:convert';

void main() async{
  var N = int.parse(stdin.readLineSync()!);
  var inputA = stdin.transform(utf8.decoder).transform(LineSplitter()).take(N);
  var A = [];
  var a = 0, b = 0, c = 0;

  await for(final point in inputA){
    A = point.split(' ').map(int.parse).toList();
  }
  for(int i=0; i<N; i++) {
  	if(A[i] == 1) a++;
    else if(A[i] == 2) b++;
    else if(A[i] == 3) c++;
  }

  print(a*(a-1)~/2 + b*(b-1)~/2 + c*(c-1)~/2);

}
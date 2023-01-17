//Convenience Store 1

import 'dart:io';
import 'dart:convert';

void main() async{
  var N = int.parse(stdin.readLineSync()!);
  var inputPrice = stdin.transform(utf8.decoder).transform(LineSplitter()).take(N);
  var price = [];
  var a = 0, b = 0, c = 0, d = 0;

  await for(final point in inputPrice){
    price = point.split(' ').map(int.parse).toList();
  }
  for(int i=0; i<N; i++) {
  	if(price[i] == 100) a++;
    else if(price[i] == 200) b++;
    else if(price[i] == 300) c++;
    else if(price[i] == 400) d++;
  }

  print(a*d+b*c);

}
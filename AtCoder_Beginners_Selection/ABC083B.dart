//Some Sums

import 'dart:io';

void main() {
  final Input = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  var N = Input[0];
  var A = Input[1];
  var B = Input[2];
  String iString;
  List<String> iList;
  
  var sum = 0;
  var result = 0;

  for(int i=1; i<=N; i++){
    sum = 0;
    iString = i.toString();
    iList = iString.split(''); 
    for (String n in iList) {
      sum += int.parse(n);
    }
    if(sum >= A && sum <= B) result += i; 
  }

  print(result);
}
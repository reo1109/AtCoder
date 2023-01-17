//Choose Cards 1

import 'dart:io';
import 'dart:convert';

void main() async {
  var N = int.parse(stdin.readLineSync()!);
  var A = stdin.transform(utf8.decoder).transform(LineSplitter()).take(N);
  var cards = [];
  var ans = 0;

  await for(final card in A) {
    cards = card.split(" ").map(int.parse).toList();
  }

  for(int i=0; i<N-4; i++) {
    for(int j=i+1; j<N-3; j++) {
      for(int k=j+1; k<N-2; k++) {
        for(int l=k+1; l<N-1; l++) {
          for(int m=l+1; m<N; m++) {
            if(cards[i] + cards[j] + cards[k] + cards[l] + cards[m] == 1000) ans++;
          }
        }
      }
    }
  }

  print(ans);
}
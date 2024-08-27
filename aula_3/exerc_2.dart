import 'dart:io';


void main(){

  // entrada
  print('digite uma frase');
  final phrase = stdin.readLineSync()!;
  print('Digite o que procuras');
  final search = stdin.readLineSync()!;
  print('Pelo que devo trocar');
  final replace = stdin.readLineSync()!;
  // processamento
  final result = phrase.replaceAll(search, replace);

  //saída

  print(result);

}
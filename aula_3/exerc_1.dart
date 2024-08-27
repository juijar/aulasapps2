import 'dart:io'; 

void main(){

  // entrada
  print('digite uma frase, e descubra algumas informações sobre ela');
  final String phrase = stdin.readLineSync()!;

  // processamento 

  final int characters =  phrase.length;
  final int words = phrase.split(' ').length;
  // saída
  print('A frase"$phrase" tem $characters caracteres');
  print('A frase "$phrase" contém $words palavras');
  

  // length conta o numero de objetos da lista
  // dart .exerc_1.dart  NO CASO É DART + .\  + pasta



  
}
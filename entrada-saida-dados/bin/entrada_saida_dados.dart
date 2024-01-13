import 'dart:io';

void main() {
  int idade = 25;
  print("Minha idade é " + idade.toString() + ".");
  print("Minha idade é $idade");
  print("Minha idade é ${idade + 1}");

  // preparado para caso ocorra erro, irá receber nulo
  print("Qual é sua idade?");
  String? entrada = stdin.readLineSync();


  if(entrada != null){
    print("sua idade é $entrada");
  }

}
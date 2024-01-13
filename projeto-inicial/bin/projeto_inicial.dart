void main() {

  /// Comentários de documentação
  /** comentário de várias linhas
   *
   *
   *
   **/
  String nome1 = 'Sheyla';
  String nome2 = 'Ana';
  String nome3 = 'Letícia';
  String nome4 = 'Laís';
  // usar o var quando não se sabe qual tipo de informação irá receber
  int energia = 100;
  var teste;
  int idade = 28;
  double altura = 1.59;
  bool resp = false;
  // desabilitar a variabilidade do objeto
  const String nome = 'Sheyla Cantalupo';
  final String apelido = 'Gabi';

  // especificar o tipo objetos que a lista vai receber
  List<String> listanomes = ['Sheyla', 'Ana', 'Letícia', 'Laís'];
  print(listanomes);
  print(listanomes[1]);

  // quantidade de itens na lista
  print(listanomes.length);

  bool mairdeIdade;

  // valeres booleanos entre os parenteses
  if (idade >= 18) {
    mairdeIdade = true;
  } else {
    mairdeIdade = false;
  }

  // lista dinâmica contendo vários tipos de dados
  List<dynamic> Sheyla1 = [28, 1.59, true, 'Sheyla Cantalupo', 'Gaby'];
  List<dynamic> Sheyla = [idade, altura, resp, nome, apelido];
  String frase =
      'Eu sou ${Sheyla[4]} \nMas meu nome completo é ${Sheyla[3]} \nEu me considero geek? ${Sheyla[2]}\n'
      'Eu tenho ${Sheyla[1]} m de altura e\n'
      '${Sheyla[0]} anos de idade\n'
      'Eu sou maior de idade? $mairdeIdade';

  print(frase);

  for (int i = 0; i < 5; i++) {
    print('concluí $i voltas');
  }
  // modificando a quantidade de incrementos
  for (int x = 0; x < 10; x = x + 2) {
    print('concluí $x voltas');
  }

  while (energia > 0) {
    print('Mais uma repetição!');
    energia = energia - 10;
    print('Minha energia é $energia\n');
  }

  do {
    print('Mais uma repetição!');
    energia = energia - 10;
  } while (energia > 0);

  int count = 1;

  while (count <= 10) {
    print("Geek, you are inside loop $count");
    count++;

    if (count == 4) {
      break;
    }
  }
  print("Geek, you are out of while loop");
}

import 'package:orientacao_objetos/orientacao_objetos.dart' as orientacao_objetos;

void main(List<String> arguments) {

  // exemplo incial apenas para um obejeto
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 40;
  bool isMadura;
   
  Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);  
  Fruta fruta02 = Fruta("uva", 20, "roxo", "doce", 20);
  print(fruta01.nome);
  fruta01.estaMadura(30);
  fruta02.estaMadura(60);

}

// Tipos de parâmetro
// 1 - Posicionais obrigatórios
// 2 - Nomeados opcionais
// 3 - Parâmetros com padrão 
// 4 - Modificador "required" - não corre o risco de não receber as informações
// 3 e 4 juntos entram em conflito
void mostarMadura(String nome, int dias, {String? cor, String textura = "sem textura"}){
  if (dias >= 30){
    print("A $nome está madura");
  }else{
    print("A $nome não está madura");
  }

  if (cor != null){
    print("A $nome é $cor");
  }

}

void mostarCor(String nome, int dias, {required String cor}){
  print("A $nome é $cor");
}

bool funcEstaMadura(int dias){
  if(dias >= 30){
    return true;
  }else {
    return false;
  }
}

int funcQuantosDiasMadura(int dias){
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}

class Fruta{
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita, {this.isMadura});

  estaMadura(int diasParaMadura){
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
      "A sua $nome foi colhida a $diasDesdeColheita dias e precisa de $diasParaMadura para amadurecer. Ela está madura? $isMadura");
  }
}
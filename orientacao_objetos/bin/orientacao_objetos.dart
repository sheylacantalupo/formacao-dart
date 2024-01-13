import 'package:orientacao_objetos/orientacao_objetos.dart' as orientacao_objetos;

void main(List<String> arguments) {

  // exemplo incial apenas para um obejeto
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 40;
  bool isMadura = funcEstaMadura(diasDesdeColheita); 

  print(isMadura);
  print(funcEstaMadura(50));

  mostarMadura("Uva", 40, cor: "Roxa");

}
// Tipos de parâmetro
// Posicionais obrigatórios
// Nomeados opcionais
// Parâmetros com padrão
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




// exemplo função
bool funcEstaMadura(int dias){
  if(dias >= 30){
    return true;
  }else {
    return false;
  }

}



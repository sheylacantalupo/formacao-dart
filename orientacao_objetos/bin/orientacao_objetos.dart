import 'package:orientacao_objetos/orientacao_objetos.dart' as orientacao_objetos;

void main(List<String> arguments) {

  // exemplo incial apenas para um obejeto
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 40;
  bool isMadura;


  Legumes mandioca = Legumes("macaxeira", 1200, "marrom", true);
  Fruta banana = Fruta("banana", 300, "amarela", "doce", 10);
  Citricas limao1 = Citricas("limão", 200, "verde", "azedo", 6, 9);
  Nozes caju = Nozes("caju", 250, "amarelo", "doce", 4, 30);


  mandioca.printAlimento();
  mandioca.cozinhar();
  mandioca.fazerMassa();
  caju.fazerMassa();

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

class Alimento{
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento(){
    print("Esse(a) $nome pesa $peso gramas e é $cor.");
  }
}

class Fruta extends Alimento implements Bolo{
  
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;
  Fruta(String nome, double peso, String cor, this.sabor, this.diasDesdeColheita, {this.isMadura}):super(nome, peso,cor);
  void estaMadura(int diasParaMadura){
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
      "A sua $nome foi colhida a $diasDesdeColheita dias e precisa de $diasParaMadura para amadurecer. Ela está madura? $isMadura");
  }
  void fazerSuco(){
    print("Você fez um ótimo suco de $nome");
  }
  
  @override
  void assar() {
    print("colocar no forno");
  }
  
  @override
  void fazerMassa() {
    print("Misturar o(a) $nome com ovo, trigo e leite.");
  }
  
  @override
  void separarIngedientes() {
    print("catar a fruta.");
  }
}

class Legumes extends Alimento implements Bolo{
  
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar):super(nome,peso,cor);

  void cozinhar(){
    if(isPrecisaCozinhar){
      print("O legume está cozinhando.");
    }else{
      print("Nem precisa cozihar.");
    }
  }
  
  @override
  void assar() {
    // TODO: implement assar
  }
  
  @override
  void fazerMassa() {
    print("ralar o regume, misturar com trigo e ovos...");
  }
  
  @override
  void separarIngedientes() {
    // TODO: implement separarIngedientes
  }
}

class Citricas extends Fruta{
  
  double nivelAcidez;

  Citricas(
    String nome,double peso,String cor,String sabor,int diasDesdeColheita,this.nivelAcidez)
  :super(nome,peso,cor,sabor,diasDesdeColheita);

  void existeRefri(bool existe){
    if(existe){
      print("Existe refrigerante de $nome");
    }else{
      print("Não existe refrigerante de $nome");
    }
  }
}

class Nozes extends Fruta{

  double porcentagemOleoNatural;

  Nozes(
    String nome,double peso,String cor,String sabor, int diasDesdeColheita,this.porcentagemOleoNatural)
  :super(nome,peso,cor,sabor,diasDesdeColheita);

  @override
  void fazerMassa(){  
    print("tirar a casca");
    super.fazerMassa();
  }
}

abstract class Bolo{
  void separarIngedientes();
  void fazerMassa();
  void assar();
}
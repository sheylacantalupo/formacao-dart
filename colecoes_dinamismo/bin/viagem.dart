import 'transporte.dart';

class Viagem{
  static String codigoTrabalho = "DJNADS12";
  double dinheiro = 0;
  Transporte locomocao;
  // sets assumem apenas valores únicos
  // como está sendo inicializado com o set vazio, não é necessário colocar no construtor
  Set<String> registrosVisitados = <String> {};
  Map<String,double> registarPrecos = {};
  int _totalLocaisVisitados = 0;

  Viagem({required this.locomocao});


  printCodigo(){
    print(codigoTrabalho);
  }

  void visitar(String localVisita){
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados += 1;
  }

  void registrarPrecoVisita(String destino, dynamic valor){
    registarPrecos[destino] = valor;
  }

  void escolherMeioTransporte(Transporte locomocao){

    switch(locomocao){
      case Transporte.carro:
        print("Vou de carro para aventura");
        break;
      case Transporte.bike:
        print("Vou de bike para aventura");
        break;
      case Transporte.aviao:
        print("Vou de avião para aventura");
        break;
      case Transporte.andando:
        print("Vou andando para aventura");
        break; 
      case Transporte.skate:
        print("Vou de skate para aventura");
        break;
      case Transporte.patins:
        print("Vou de patins para aventura");
        break;
      default:
        print("Estou indo para a aventura");
        break;
      
    }
  }

  // não precisa de parenteses pois não vai passar nada como parametro, apenas pegar a informacao
  int get consutarTotalVisitados{
    return _totalLocaisVisitados;
  }
  
  void set alterarLocaisVisitados(int novaQuantidade){

    _totalLocaisVisitados = novaQuantidade;    
  }
}



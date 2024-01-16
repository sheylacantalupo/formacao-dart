
void main() {

  escolherMeioTransporte(Transporte.aviao);

  // sets assumem apenas valores únicos
  Set<String> registrosVisitados = <String> {};
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  registrosVisitados = registrarDestinos("João Pessoa", registrosVisitados);
  registrosVisitados = registrarDestinos("Torino", registrosVisitados);
  registrosVisitados = registrarDestinos("Paris", registrosVisitados);
  print(registrosVisitados);

  Map<String,double> registarPrecos = {};
  registarPrecos["São Paulo"] = 1200;
  registarPrecos["Paris"] = 7200;
  registarPrecos["Recife"] = 1220;
  print(registarPrecos);
  registarPrecos.remove("Recife");
  print(registarPrecos);
  print(registarPrecos["São Paulo"]);

}

Set<String> registrarDestinos(String destino,Set<String> banco){
  banco.add(destino);
  return banco;
}

enum Transporte{
  carro,
  bike,
  andando,
  skate,
  aviao,
  patins
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


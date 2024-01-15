
void main() {

  //escolherMeioTransporte(0);
  //escolherMeioTransporteEnum(Transporte.bike);
  escolherMeioTransporteSwitch(Transporte.aviao);

}

void escolherMeioTransporte(int locomocao){
  if (locomocao == 0){
    print("Vou de carro para aventura");
  }else if (locomocao == 0){
    print("Vou de bike para aventura");
  }else{
    print("Vou aventura");
  }

}

enum Transporte{
  carro,
  bike,
  andando,
  skate,
  aviao,
  patins
}

void escolherMeioTransporteEnum (Transporte locomocao){
  if (locomocao == Transporte.carro){
    print("Vou de carro para aventura");
  }else if (locomocao == Transporte.bike){
    print("Vou de bike para aventura");
  }else{
    print("Não vou");
  }

}

void escolherMeioTransporteSwitch(Transporte locomocao){

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
      
  }

}
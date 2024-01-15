
void main() {

  //escolherMeioTransporte(0);
  escolherMeioTransporteEnum(Transporte.bike);

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
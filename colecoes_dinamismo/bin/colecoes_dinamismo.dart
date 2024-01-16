
import 'transporte.dart';
import 'viagem.dart';

void main() {

  Viagem viagemJaneiro = Viagem(locomocao: Transporte.aviao);
  viagemJaneiro.visitar("João Pessoa");
  viagemJaneiro.visitar("Torino");
  viagemJaneiro.visitar("Viena");
  viagemJaneiro.registrarPrecoVisita("Torino", 500.0);

  print(viagemJaneiro.registrosVisitados);
  print(viagemJaneiro.consutarTotalVisitados);

  viagemJaneiro.alterarLocaisVisitados = 0;

  print(viagemJaneiro.consutarTotalVisitados);



}



class BotClock{

  Future clock(int seconds){
    // vai retornar o delay recebendo como parâmentro a quantidade de segundos desejados.
    return Future.delayed(Duration(seconds: seconds));
  }

  
}
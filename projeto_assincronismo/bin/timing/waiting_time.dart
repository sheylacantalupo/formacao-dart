class BotClock{

  Future clock(int seconds){
    // vai retornar o delay recebendo como parâmentro a quantidade de segundos desejados.
    return Future.delayed(Duration(seconds: seconds));
  }

  Stream botStream(int interval, [int? maxCount]) async*{

    int i = 1;
    while(i != maxCount){
      //print("Counting: $i");
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print("The stram is finished");

  }

  
}
import 'dart:async';

void main () async{
  Stream myStream(int interval, [int? maxCount]) async*{

    int i = 1;
    while(i != maxCount){
      print("Counting: $i");
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print("The stram is finished");

  }
  
  var newStream = myStream(1);

  StreamSubscription mySubscriber = newStream.listen((event) {
    if(event.isEven){
      print("The number is even!");
    }
  }, onError: (e){
    print("An erron happend: $e");
  }, onDone: (){
    print("The subscriber is gone.");
  });

  newStream.map((event) => "Subscriber 2 watching: $event").listen(print);

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.pause();
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.resume();
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.cancel();

  
  print("The main is finished");

}
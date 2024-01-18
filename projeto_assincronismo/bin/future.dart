void main(){
  Future myFuture = Future((){
    print("Going back to the future");
    return 21;
  }).then((value) => print("The value is $value"));

  Future<int> myFurureFunc()async{
    print("I have a function in the future.");
    await Future.delayed(Duration(seconds: 5));
    throw Exception();
    return 12;
  }

  myFurureFunc()
  .then((value) => print("My function value is $value"))
  .onError((error, stackTrace) => print("An error occurred"));

  // Future<int> myFutureErrorFunc(int a, int b) async {
  //   try{
  //     if(a>b){
  //       throw Exception();
  //     }
  //     print("I have a functional function");
  //     await Future.delayed(Duration(seconds: 5));
  //     return 42;
  //   }catch(e){
  //     print("An error ocurred: $e");
  //   }finally{
  //     print("THE future is finally over");
  //   }
  // }

}
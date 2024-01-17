// Conceito de pilha de execução
void stackStart(){
  print("Started main");
  functionOne();
  print("Finished main");

}

// void functionOne(){
//   print("Started func 01");
//   try{
//       functionTwo();
//     }on FormatException catch (e){
//       print("Foi capturada dentro da functionOne");
//       print(e.message);
//       print(e.source);
//       print(e.toString());
//     }
  
//   print("Finished func 01");
// }

void functionOne(){
  print("Started func 01");
  try{
      functionTwo();
  }catch (exception, stackTrace){
    print("Foi capturada dentro da functionOne");
    print(stackTrace.toString());
    print(exception.runtimeType);
    rethrow;
  }finally{
    print("chegou no Finally");
  }
  
  print("Finished func 01");
}

void functionTwo(){
  print("Started func 02");
  for(int i=1; i<=5; i++){
    print(i);
    double amount = double.parse("Not a number");   
  }
  print("Finished func 02");
}

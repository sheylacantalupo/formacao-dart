import 'dart:io';
import 'dart:math';

import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

// testingNullSafety
void testingNullSafety(){
  // se eu não inicializo, automaticamente é nulo
  Account? myAccount;

  Random rng = Random();
  int randomNumber = rng.nextInt(10);
  if(randomNumber <=5){
    myAccount = Account(name: "Sheyla", balance: 200, isAuthenticated: true);
  }
  print(myAccount.runtimeType);
  //print(myAccount.balance);
  //print(myAccount!.balance);
  if (myAccount != null){
    print(myAccount.balance);
  }else{
    print("Conta nula");
  }

  //print(myAccount != null? myAccount.balance : "Conta nula");
}
void main() {

  testingNullSafety();
  // Criando o banco
  BankController bankController = BankController();
  //Account testAcount = Account(name: "", balance: 200, isAuthenticated: true); teste assert
  
  // Adicionando contas
  bankController.addAccount(
      id: "Ana",
      account:
          Account(name: "Ana Maria", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Morgana",
      account:
          Account(name: "Morgana Amorim", balance: 600, isAuthenticated: false));

  // Fazendo transferência
  try{
    bool result = bankController.makeTransfer(
      idSender: "Ana", idReceiver: "Morgana", amount: 100);
    // Observando resultado
    //print(result);
    if(result){
      print("Transação concluída com sucesso!");
    }
  } on SenderIdInvalidException catch (e){
      print(e);
      print("O '${e.idSender}' do remetente não é um ID válido");
  }on ReceiverIdInvalidException catch (e){
      print(e);
      print("O '${e.idReceiver}' do destinatário não é um ID válido");
  }on SenderNotAuthenticatedException catch (e){
      print(e);
      print("O usuário rementente de id '${e.idSender}' não está autenticado");
  }on SenderBalancerLowerThanAmountException catch (e){
      print(e);
      print("O usurário de ID '${e.idSender}' tentou enviar '${e.amount}' mas na sua conta tem apenas '${e.senderBalance}'.");
  }on ReceiverNotAuthenticatedException catch (e){
      print(e);
      print("O usuário destinatário de id '${e.idReceiver}' não está autenticado");
  }on Exception {
      print("Algo deu errado!");
  }
}

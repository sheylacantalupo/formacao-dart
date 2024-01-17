import 'dart:io';

import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void main() {
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

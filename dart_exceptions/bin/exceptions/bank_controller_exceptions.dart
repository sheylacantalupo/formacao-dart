class SenderIdInvalidException implements Exception{
  // não vai precisar de uma instancia para ser utilizada
  static const String report = "SenderIdInvalidException";
  String idSender;

  SenderIdInvalidException({required this.idSender});
  @override
  String toString(){
    return "$report\nID Sender $idSender";
  }
}

class ReceiverIdInvalidException implements Exception {
  static const String report = "ReceiverIdInvalidException";
  String idReceiver;

  ReceiverIdInvalidException({required this.idReceiver});

  @override
  String toString(){
    return "$report\nID Receiver $idReceiver";
  }
}

class SenderNotAuthenticatedException implements Exception {
  static const String report = "SenderNotAuthenticatedException";
  String idSender;

  SenderNotAuthenticatedException({required this.idSender});

  @override
  String toString(){
    return "$report\nID Sender $idSender";
  }
}

class ReceiverNotAuthenticatedException implements Exception {
  static const report = "ReceiverNotAuthenticatedException";
  String idReceiver;

  ReceiverNotAuthenticatedException({required this.idReceiver});

  @override
  String toString(){
    return "$report\nID Receiver $idReceiver";
  }
}

class SenderBalancerLowerThanAmountException implements Exception { 
  static const String report = "SenderBalancerLowerThanAmountException";
  String idSender;
  double senderBalance;
  double amount;

  SenderBalancerLowerThanAmountException({required this.idSender, required this.senderBalance, required this.amount });
  
  @override
  String toString(){
    return "$report\nID Sender: $idSender\nSender Balance: $senderBalance\nAmout: $amount.";
  }
}
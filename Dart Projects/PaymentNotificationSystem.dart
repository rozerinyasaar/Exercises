void main() {
  var cardPayment = CreditCardPayment(150.000);
  cardPayment.processPayment();
  cardPayment.sendSMS("Your credit card charge has been approved.");
  cardPayment.sendEmail("Your receipt is attached.");

  var transfer = BankTransfer(50.000);
  transfer.processPayment();
  transfer.sendEmail("Your bank transfer notification has been received.");
}

//MIXINS
//It does not require overriding.
mixin SMSNotifications {
  void sendSMS(String message) {
    print("You have a new message:$message");
  }
}

mixin EmailNotification {
  void sendEmail(String message) {
    print("You have an email:$message");
  }
}

//BASE CLASS
abstract class Payment {
  double amount;
  void processPayment();
  Payment(this.amount);
}

class CreditCardPayment extends Payment
    with SMSNotifications, EmailNotification {
  CreditCardPayment(super.amount);
  @override
  void processPayment() {
    print("$amount TL was paid by credit card.");
  }
}

class BankTransfer extends Payment with EmailNotification {
  BankTransfer(super.amount);
  @override
  void processPayment() {
    print("The money transfer has been received by your bank.");
  }
}

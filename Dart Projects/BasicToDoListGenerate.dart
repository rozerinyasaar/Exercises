import 'dart:io';

void main() {
  List<String> data = [];
  bool isActive = true;

  while (isActive) {
    print('What do you want?(add,show,exit,remove)');
    String user = stdin.readLineSync()!;
    //ADDING ITEM TO LIST
    if (user == 'add') {
      print('What do you want to add?');
      String userData = stdin.readLineSync()!.toLowerCase();
      data.add(userData);
    } 
    //SHOW THE LIST
    else if (user == 'show') {
      print('Your list is :');
      for (int i = 0; i < data.length; i++) {
        print('${i + 1}.${data[i]}');
      }
    } 
    //REMOVE ITEM FROM THE LIST
    else if (user == 'remove') {
      print('Enter the number of the item to remove:');
      int? number = int.tryParse(stdin.readLineSync()!);

      if (number == null) {
        print('Invalid data');
      } else if (number < 1 || number > data.length) {
        print('There is no product for this number');
      } else {
        data.removeAt(number - 1);
      }
    } 
    //EXIT FROM PROGRAM
    else if (user == 'exit') {
      print('Have a nice day!');
      break;
    }
  }
}

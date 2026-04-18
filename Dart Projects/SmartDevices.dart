void main() {
  SmartPhone newPhone = SmartPhone('Iphone-X', 'Apple', 15000);
  newPhone.playMusic();
  newPhone.takePhoto();
}

//CREATE INTERFACE
abstract class CanTakePhoto {
  void takePhoto();
}

abstract class CanPlayMusic {
  void playMusic();
}

//CREATE MAIN CLASS
class Device {
  String name;
  String brand;
  int cost;
  Device(this.name, this.brand, this.cost);
}

class SmartPhone extends Device implements CanPlayMusic, CanTakePhoto {
  SmartPhone(super.name, super.brand, super.cost);
  @override
  void playMusic() {
    print('Baris Manco-Gulpembe');
  }

  @override
  void takePhoto() {
    print('The photo is saved.');
  }
}

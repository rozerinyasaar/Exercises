void main() {
  Archer newArcher = Archer('Robin', 100);
  Knight newKnight = Knight('Lance', 150);
  newArcher.attack();
  newKnight.attack();
  Archer x = Archer('Eagle', 15);
  x.setHealth(-9);
}

abstract class GameCharacter {
  String name;
  int _health; //Encapsulation(make it private)
  void setHealth(int value) {
    if (value < 0) {
      _health = 0;
      print('Health of $name is ${_health}');
    } else {
      _health = value;
      print('Health of $name is ${_health}');
    }
  }

  void attack();
  GameCharacter(this.name, this._health);
}

class Archer extends GameCharacter {
  Archer(super.name, super._health);
  @override
  void attack() {
    print(' Archer $name is shooting an arrow!');
  }
}

class Knight extends GameCharacter {
  Knight(super.name, super._health);
  @override
  void attack() {
    print(' Knight $name is swinging a sword!');
  }
}

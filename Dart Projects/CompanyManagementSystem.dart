
void main() {
  Manager('Ali', 1234, 100.000, 4).showInfo();
  Employee('Ayşe', 1235, 1000.00).showInfo();
  Developer('Mehmet', 1236, 100.0000, 'Türkçe').showInfo();
}

class Employee {
  String name;
  int id;
  double salary;

  Employee(this.name, this.id, this.salary);
  void showInfo() {
    print('EMPLOYEE INFO:');
    print('NAME:$name , ID:$id , SALARY:$salary');
  }
}

class Manager extends Employee {
  int teamsize;
  Manager(String name, int id, double salary, this.teamsize)
    : super(name, id, salary);
  @override
  void showInfo() {
    super.showInfo();
    //Polymorphism
    print('Team size:$teamsize');
  }
}

class Developer extends Employee {
  String language;

  Developer(String name, int id, double salary, this.language)
    : super(name, id, salary);
  @override
  void showInfo() {
    super.showInfo();
    print('Language:$language');
  }
}

import 'dart:io';

void main() {
  List<Student> students = [];
  bool isActive = true;

  while (isActive) {
    print(
      'Please enter a number for the action you wish to do(1-Adding Student,2-Show students,3-Exit)',
    );
    int number = int.parse(stdin.readLineSync()!);
//ADDING STUDENTS
    if (number == 1) {
      print('Please enter information about the student:');
      print('NAME:');
      String name = stdin.readLineSync()!;
      print('GRADE:');
      int? grade = int.tryParse(stdin.readLineSync()!);
      print('ABSENCES:');
      int? absences = int.tryParse(stdin.readLineSync()!);
      Student newStudent = Student(name, grade, absences);
      students.add(newStudent);
    } 
    //SHOW STUDENTS
    else if (number == 2) {
      print('The list of students:');
      for (int i = 0; i < students.length; i++) {
        print(
          '${i + 1} .Name: ${students[i].name},Grade: ${students[i].grade},Absences: ${students[i].absences},Result:${students[i].isPassed()}',
        );
      }
    }
    //EXIT 
    else if (number == 3) {
      print('Good Bye!');
      break;
    }
  }
}

//CLASS FOR STUDENTS
class Student {
  String? name;
  int? grade;
  int? absences;

  Student(this.name, this.grade, this.absences);
  String isPassed() {
    if (grade! > 50) {
      return 'The student is passed.';
    } else {
      return 'Failed.';
    }
  }
}

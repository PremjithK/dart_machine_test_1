import 'dart:io';

class Person {
  String? name;
  int? age;
}

class Student extends Person {
  int? student_id;

  Student(String name, int age, this.student_id) {
    this.name = name;
    this.age = age;
  }
  @override
  String toString() {
    return '''
    Name: $name
    Age:  $age
    ID:   $student_id
    ''';
  }
}

void main(List<String> args) {
  //stdout.writeln(Person().toString());
  Student s1 = Student("Arjun", 17, 1011);
  Student s2 = Student("Vinod", 15, 1222);
  stdout.write(s1.toString());
  stdout.writeln('------------');
  stdout.write(s2.toString());
}

import 'Adress.dart';
import 'course.dart';

class Student {
  int id;
  String name;
  int? age;
  List<String> nameCourse;
  Course course;
  Adress adress;

  Student({
    required this.id,
    required this.name,
    this.age,
    required this.nameCourse,
    required this.course,
    required this.adress,
  });
}

import 'dart:convert';

import 'address.dart';
import 'course.dart';

class Student {
  final int? id;
  final String name;
  final int? age;
  final List<String> nameCourses;
  final Course courses;
  final Address address;

  Student({
    this.id,
    required this.name,
    this.age,
    required this.nameCourses,
    required this.courses,
    required this.address,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "age": age,
      "nameCourse": nameCourses,
      "course": courses,
      "address": address
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map["id"] ?? 0,
      name: map["name"] ?? "",
      age: map["age"] ?? 0,
      nameCourses: map["nameCourse"] ?? "",
      courses: map["course"] ?? "",
      address: Address.fromMap(map["address"] ?? {}),
    );
  }

  factory Student.fromJson(String json) {
    final jsonMap = jsonDecode(json);
    return Student.fromMap(jsonMap);
  }
}

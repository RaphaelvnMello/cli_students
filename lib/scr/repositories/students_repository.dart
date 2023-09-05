import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/students.dart';

class StudentRepository {}

Future<List<Student>> findAll() async {
  final studentsResult =
      await http.get(Uri.parse('http://localhost/8080/students'));

  if (studentsResult.statusCode != 200) {
    throw Exception();
  }
  final studentsData = jsonDecode(studentsResult.body);
  return studentsData.map<Student>((student) {
    return Student.fromMap(student);
  }).toList();
}

Future<Student> findById(int id) async {
  final studentResult =
      await http.get(Uri.parse('http://localhost/8080/students/$id'));

  if (studentResult.statusCode != 200) {
    throw Exception();
  }
  if (studentResult.body == '{}') {
    throw Exception();
  }
  return Student.fromJson(studentResult.body);
}

Future<void> insert(Student student) {}
Future<void> update(Student student) {}
Future<void> deletById(int id) {}

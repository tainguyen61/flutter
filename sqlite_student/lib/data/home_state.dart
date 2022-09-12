import 'package:flutter/material.dart';

import '../models/sqlite_controller.dart';
import '../models/student.dart';

class HomeState extends ChangeNotifier {
  List<Student> studentList = [];
  SQLiteController sqLiteController;

  HomeState({required this.studentList, required this.sqLiteController});

  void addStudent(Student student) {
    studentList.add(student);
    notifyListeners();
  }

  deleteItem(index) {
    studentList.removeAt(index);
    notifyListeners();
  }

  updateItem(String name, String address, String phone, index) {
    studentList[index].name = name;
    studentList[index].address = address;
    studentList[index].phone = phone;
    notifyListeners();
  }

  void getListStudents() async {
    studentList.clear();
    studentList = await sqLiteController.students();
    notifyListeners();
  }

  void getListStudentsFirstTime() async {
    await sqLiteController.initializaDatabase();
    getListStudents();
    notifyListeners();
  }
}

final homeState =
    HomeState(studentList: <Student>[], sqLiteController: SQLiteController());

import 'dart:convert';

import 'package:btvn12/models/student.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

late Database database;
const DB_Name = 'student_database.db';
const TABLE_NAME = 'students';

class SQLiteController {
  Future<void> initializaDatabase() async {
    WidgetsFlutterBinding.ensureInitialized();
    database = await openDatabase(
      join(await getDatabasesPath(), DB_Name),
    );

    database.execute(
      'CREATE TABLE IF NOT EXISTS $TABLE_NAME (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, address TEXT, phone TEXT)',
    );
  }

  Future<void> insertStudent(Student student) async {
    final db = database;

    await db.rawInsert(
        'INSERT INTO $TABLE_NAME (NAME, ADDRESS, PHONE) VALUES(\'${student.name}\',\'${student.address}\',\'${student.phone}\')');
  }

  Future<List<Student>> students() async {
    final db = database;
    final List<Map<String, dynamic>> maps =
        await db.rawQuery('SELECT * FROM $TABLE_NAME');
    return List.generate(
      maps.length,
      (i) {
        return Student(
          id: maps[i]['id'],
          name: maps[i]['name'],
          address: maps[i]['address'],
          phone: maps[i]['phone'],
        );
      },
    );
  }

  Future<void> updateStudent(Student student) async {
    final db = database;

    await db.update(
      'students',
      student.toMap(),
      where: 'id = ?',
      whereArgs: [student.id],
    );
  }

  Future<void> deleteStudent(int id) async {
    // Get a reference to the database.
    final db = database;

    // Remove the Dog from the database.
    await db.delete(
      TABLE_NAME,
      // Use a `where` clause to delete a specific dog.
      where: 'id = ?',
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [id],
    );
  }
}

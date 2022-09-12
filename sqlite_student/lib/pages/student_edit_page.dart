import 'package:flutter/material.dart';

import '../data/home_state.dart';
import '../models/student.dart';
import '../widget/big_text.dart';

class StudentEditPage extends StatelessWidget {
  int id;
  String name;
  String address;
  String phone;

  StudentEditPage(
      {Key? key,
      required this.id,
      required this.name,
      required this.address,
      required this.phone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String studentName = name;
    String studentaddress = address;
    String studentphone = phone;

    final _name = TextEditingController();
    final _address = TextEditingController();
    final _phone = TextEditingController();

    _name.text = studentName;
    _address.text = studentaddress;
    _phone.text = studentphone;
    return Scaffold(
      appBar: AppBar(
        title: BigText(
          text: 'Chỉnh sửa sinh viên',
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow.shade600,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _name,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                filled: true,
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "Fullname",
                border: InputBorder.none,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _address,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                filled: true,
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "Address",
                border: InputBorder.none,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _phone,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                filled: true,
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "Phone",
                border: InputBorder.none,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                name = _name.text;
                address = _address.text;
                phone = _phone.text;
                homeState.sqLiteController.updateStudent(Student(
                    id: id, name: name, address: address, phone: phone));
              },
              child: BigText(
                text: 'Lưu',
                size: 18,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

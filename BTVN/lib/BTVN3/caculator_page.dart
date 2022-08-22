import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  double firstNumber = 0;
  double secondNumber = 0;
  double result = 0;

  final _firstController = TextEditingController();
  final _secondController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'assets/images/calculator.png',
                width: 150,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: _firstController,
                    decoration: const InputDecoration(hintText: 'Nhập số A'),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: _secondController,
                    decoration: const InputDecoration(hintText: 'Nhập số B'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Kết quả: $result',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20)),
                  onPressed: () {
                    firstNumber = double.parse(_firstController.text);
                    secondNumber = double.parse(_secondController.text);
                    result = firstNumber + secondNumber;
                    setState(() {});
                  },
                  child: const Text(
                    '+',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20)),
                  onPressed: () {
                    firstNumber = double.parse(_firstController.text);
                    secondNumber = double.parse(_secondController.text);
                    result = firstNumber - secondNumber;
                    setState(() {});
                  },
                  child: const Text(
                    '-',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20)),
                  onPressed: () {
                    firstNumber = double.parse(_firstController.text);
                    secondNumber = double.parse(_secondController.text);
                    result = firstNumber * secondNumber;
                    setState(() {});
                  },
                  child: const Text(
                    'x',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20)),
                  onPressed: () {
                    firstNumber = double.parse(_firstController.text);
                    secondNumber = double.parse(_secondController.text);
                    result = firstNumber / secondNumber;
                    setState(() {});
                  },
                  child: const Text(
                    ':',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

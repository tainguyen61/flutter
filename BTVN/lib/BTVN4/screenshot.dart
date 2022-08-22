import 'package:flutter/material.dart';
import 'package:new_project/screen_main.dart';
import 'package:new_project/widget/big_text.dart';

class ScreenShot extends StatelessWidget {
  const ScreenShot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: BigText(
            text: 'Flex Demo - CodeFresher',
            color: Colors.white,
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(onPressed: () {Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => const ScreenMain()),
              );}, icon: const Icon(Icons.arrow_back));
            },
          )),
      body: Column(
        children: [
          Container(
            height: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/images_42/img1.jpg'),
                    fit: BoxFit.cover,
                  )),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Lập trình Flutter',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Thực chiến dự án app mobile 2022',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.green,
            thickness: 3,
            indent: 30,
            endIndent: 30,
          ),
          Container(
            height: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      child: const Text(
                        'Lập trình Android',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Java + Kotlin',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/images_42/img2.jpg'),
                    fit: BoxFit.cover,
                  )),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.green,
            thickness: 3,
            indent: 30,
            endIndent: 30,
          ),
          Container(
            height: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 240,
                  width: 240,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/images_42/img3.png'),
                    fit: BoxFit.cover,
                  )),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Lập trình Java cơ bản',
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150,
                      child: const Text(
                        'Cho người mới bắt đầu',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:new_project/BTVN4/user_model.dart';
import 'package:new_project/screen_main.dart';
import 'package:new_project/widget/big_text.dart';
import 'package:new_project/widget/small_text.dart';

class WhatsAppClonePage extends StatelessWidget {
  const WhatsAppClonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<User> userList = [];

    userList.add(User(
        image: 'assets/images/images_4/user1.jpg',
        userName: 'User 1 User 1User 1User 1User 1',
        description:
            'chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn.',
        time: '6Pm',
        status: true));
    userList.add(
      User(
          image: 'assets/images/images_4/user2.jpg',
          userName: 'User 2',
          description: 'description',
          time: '7Am',
          status: true),
    );
    userList.add(User(
        image: 'assets/images/images_4/user3.jpg',
        userName: 'User 3',
        description: 'description',
        time: '8Pm',
        status: false));
    userList.add(User(
        image: 'assets/images/images_4/user4.jpg',
        userName: 'User 4',
        description: 'description',
        time: '10Am',
        status: false));
    userList.add(User(
        image: 'assets/images/images_4/user5.jpg',
        userName: 'User 5',
        description: 'description',
        time: '1Am',
        status: true));
    userList.add(User(
        image: 'assets/images/images_4/user6.jpg',
        userName: 'User 6',
        description: 'description',
        time: '5Pm',
        status: false));
    userList.add(User(
        image: 'assets/images/images_4/user6.jpg',
        userName: 'User 6',
        description: 'description',
        time: '3Am',
        status: true));
    userList.add(User(
        image: 'assets/images/images_4/user6.jpg',
        userName: 'User 6',
        description: 'description',
        time: '8Am',
        status: false));
    userList.add(User(
        image: 'assets/images/images_4/user6.jpg',
        userName: 'User 6',
        description: 'description',
        time: '6Am',
        status: false));
    userList.add(User(
        image: 'assets/images/images_4/user6.jpg',
        userName: 'User 6',
        description: 'description',
        time: '11Am',
        status: false));
    userList.add(User(
        image: 'assets/images/images_4/user6.jpg',
        userName: 'User 6',
        description: 'description',
        time: '12Pm',
        status: true));

    return Scaffold(
      backgroundColor: Color(0xFF167766),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BigText(
              text: 'WhatsApp Clone',
              color: Colors.white,
              size: 30,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 30,
              ),
            )
          ],
        ),
        elevation: 0,
        backgroundColor: Color(0xFF167766),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => ScreenMain()),
                );
              },
              icon: Icon(Icons.arrow_back),
            );
          },
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              child: SizedBox(
                height: 130,
                child: ListView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: userList.length,
                    itemBuilder: (context, index) {
                      final user = userList[index];
                      return Container(
                        width: 90,
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(user.image),
                              radius: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SmallText(
                              text: user.userName,
                              color: Colors.white,
                              size: 14,
                              overFlow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: userList.length,
                itemBuilder: (context, index) {
                  final user = userList[index];
                  return Container(
                    margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(user.image),
                              radius: 42,
                            ),
                            Container(
                              width: 200,
                              margin: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(user.userName,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),),

                                  SizedBox(
                                    height: 10,
                                  ),
                                  SmallText(
                                    text: user.description,
                                    color: Colors.black,
                                    size: 16,
                                    overFlow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            BigText(
                              text: user.time,
                              size: 24,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            user.status
                                ? Icon(
                                    Icons.check_circle_outline,
                                    color: Colors.grey,
                                  )
                                : Icon(
                                    Icons.check_circle_rounded,
                                    color: Colors.green,
                                  )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

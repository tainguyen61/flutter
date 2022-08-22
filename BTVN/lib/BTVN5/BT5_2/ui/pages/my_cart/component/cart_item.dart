import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage('https://vuadasaigon.com/images/detailed/4/db85_tui_da_lon_2.jpg',)
                // Image.network(
                //   'https://vuadasaigon.com/images/detailed/4/db85_tui_da_lon_2.jpg',
                //   width: 150,
                //   height: 150,
                //   fit: BoxFit.cover,
                // ),
              )
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Colors.white),
              height: 180,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: const Text(
                          'Item 1',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Price: \$200'),
                      Row(
                        children: const [
                          Text('Sub Total: '),
                          Text(
                            '\$400',
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Ship Free',
                        style: TextStyle(color: Colors.orange),
                      ),
                      // const Spacer(),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.remove),
                            color: Colors.red,
                          ),
                          SizedBox(width: 10),
                          Container(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.white
                                ),
                                child: Text('2')),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3,
                                  offset: Offset(1, 2), // Shadow position
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                            color: Colors.green,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

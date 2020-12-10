import 'package:flutter/material.dart';

class ManyGridView extends StatelessWidget {
  final List<Map<String, dynamic>> manyGrid = [
    {'image': 'booth.png', 'isNew': false, 'text': 'PayDirect'},
    {'image': 'rfid.png', 'isNew': false, 'text': 'RFID'},
    {'image': 'parking.png', 'isNew': false, 'text': 'Parking'},
    {'image': 'prepaid-card.png', 'isNew': false, 'text': 'Prepaid'},
    {'image': 'invoices.png', 'isNew': false, 'text': 'Bills'},
    {'image': 'letter.png', 'isNew': false, 'text': 'PostPaid'},
    {'image': 'joystick.png', 'isNew': true, 'text': 'Game Credits'},
    {'image': 'food-stall.png', 'isNew': true, 'text': 'Merchant'},
    {'image': 'eating.png', 'isNew': true, 'text': 'DeliverEat'},
    {'image': 'shopping-cart.png', 'isNew': false, 'text': 'Lazada'},
    {'image': 'popcorn.png', 'isNew': false, 'text': 'Movies'},
    {'image': '', 'isNew': false, 'text': 'More', 'fake': true},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        height: 260,
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 12,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 10,
            childAspectRatio: 1.2,
          ),
          padding: EdgeInsets.all(0.0),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            colors: [
                              Color(0xFF990CAF9),
                              Color(0xFFE1F5FE),
                            ],
                          ),
                        ),
                        child: manyGrid[index]['fake'] != null
                            ? Icon(
                                Icons.more_horiz,
                                size: 30,
                                color: Colors.blueAccent[400],
                              )
                            : SizedBox.shrink(),
                      ),
                    ),
                    manyGrid[index]['fake'] == null
                        ? Center(
                            child: Image(
                              alignment: Alignment.center,
                              image: AssetImage(
                                'assets/grid/${manyGrid[index]['image']}',
                              ),
                              width: 50,
                              height: 50,
                            ),
                          )
                        : SizedBox.shrink(),
                    manyGrid[index]['isNew']
                        ? Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              width: 30,
                              height: 15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                color: Colors.red,
                              ),
                              child: Center(
                                child: Text(
                                  'NEW',
                                  style: TextStyle(
                                    fontSize: 9,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : SizedBox.shrink(),
                  ],
                ),
                SizedBox(height: 3.0),
                Flexible(
                  child: Text(manyGrid[index]['text'],
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 11.0,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

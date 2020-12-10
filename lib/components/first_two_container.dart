import 'package:flutter/material.dart';

class FirstTwoContainer extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final Color firstColor;
  final Color secondColor;
  final bool isNew;

  FirstTwoContainer({
    @required this.image,
    @required this.title,
    @required this.description,
    @required this.firstColor,
    @required this.secondColor,
    this.isNew = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 100,
          width: (MediaQuery.of(context).size.width / 2) - 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [
                firstColor,
                secondColor,
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(
                image: AssetImage(image),
                width: 50.0,
                height: 50.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      isNew
          ? Positioned(
              right: 0,
              top: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
                width: 40,
                height: 20,
                child: Center(
                  child: Text(
                    'NEW',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            )
          : SizedBox.shrink(),
    ]);
  }
}

import 'package:flutter/material.dart';

class FirstList extends StatelessWidget {
  final String image;

  const FirstList({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: AssetImage(
                'assets/ads/$image',
              ),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400],
                offset: Offset(0.0, 3.0),
                blurRadius: 2.0,
              )
            ]),
      ),
    );
  }
}

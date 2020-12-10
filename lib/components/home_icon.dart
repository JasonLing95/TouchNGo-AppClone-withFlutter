import 'package:flutter/material.dart';

class HomeIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final double animation;

  const HomeIcon({
    @required this.icon,
    @required this.text,
    @required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 40,
          color: Colors.blueAccent[400],
        ),
        SizedBox(height: 5.0 * animation),
        Opacity(
          opacity: animation,
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black87,
              height: 1.0 * animation,
            ),
          ),
        ),
      ],
    );
  }
}

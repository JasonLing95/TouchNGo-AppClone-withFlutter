import 'package:flutter/material.dart';

class SecondList extends StatelessWidget {
  final String image;
  final String text;

  const SecondList({
    Key key,
    this.image,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 2.0,
      child: Column(
        children: [
          Container(
            width: 300,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              image: DecorationImage(
                image: AssetImage('assets/ads/$image'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(text,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                        )),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 10,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Padding(
//       padding: const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
//       child: Container(
//         width: 300,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             image: DecorationImage(
//               image: AssetImage(
//                 'assets/ads/$image',
//               ),
//               fit: BoxFit.cover,
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey[400],
//                 offset: Offset(0.0, 3.0),
//                 blurRadius: 2.0,
//               )
//             ]),
//       ),
//     );

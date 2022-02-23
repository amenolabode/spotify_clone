import 'package:flutter/material.dart';
import 'style.dart';

class SquareListen extends StatelessWidget {
  final String squareImage;
  final String squareMusicTitle;

  const SquareListen(
      {Key? key, required this.squareImage, required this.squareMusicTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/albumview');
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        width: 100,
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Image.asset(
                squareImage,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Text(squareMusicTitle, style: musicTitle)
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'style.dart';

class CircluarListen extends StatelessWidget {
  final String circularImage;
  final String circularMusicTitle;

  const CircluarListen(
      {Key? key, required this.circularImage, required this.circularMusicTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 100,
      height: 140,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ClipOval(
              child: Image.asset(
                circularImage,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(circularMusicTitle, style: musicTitle)
        ],
      ),
    );
  }
}

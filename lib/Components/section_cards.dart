import 'package:flutter/material.dart';
import 'style.dart';

class SectionCards extends StatelessWidget {
  final String squareImage;
  final String squareMusicTitle;
  final String squareMusicSubtitle;
  final String squareMusicSubtitleName;

  const SectionCards(
      {Key? key,
      required this.squareImage,
      required this.squareMusicTitle,
      required this.squareMusicSubtitle,
      required this.squareMusicSubtitleName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 148,
      height: 184,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Container(
              child: Image.asset(
                squareImage,
                // height: 100,
                // width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(squareMusicTitle, style: musicTitle),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Row(
              children: [
                Text(
                  squareMusicSubtitle,
                  style: musicSubTitle,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                  child: SizedBox(
                    height: 4,
                    width: 4,
                    child: ClipOval(
                      child: Container(
                        color: grey,
                      ),
                    ),
                  ),
                ),
                Text(
                  squareMusicSubtitleName,
                  style: musicSubTitle,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

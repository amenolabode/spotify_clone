import 'package:flutter/material.dart';
import 'style.dart';

class PreviousListenCard extends StatelessWidget {
  final String previousListenText;
  final String heroImage;

  const PreviousListenCard(
      {Key? key, required this.previousListenText, required this.heroImage})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: SizedBox(
        height: 56,
        width: width * 0.448712,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff4a4a4a).withOpacity(0.5),
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 56,
                  width: width * 0.15,
                  child: Image.asset(
                    heroImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(previousListenText, style: previousListen),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

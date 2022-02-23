import 'package:flutter/material.dart';
import 'package:spotify/Components/style.dart';

class PlayingBar extends StatelessWidget {
  const PlayingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 78,
        width: width * 0.98,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xff2D2E30),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 54,
                        width: 54,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(
                          "Assets/Images/image 11.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(bottom: 2.0),
                                child: SizedBox(
                                  width: 200,
                                  child: Text(
                                    "It's a good thing to shout Hallelujah",
                                    overflow: TextOverflow.ellipsis,
                                    style: musicTitle,
                                  ),
                                ),
                              ),
                              Text(
                                "data",
                                style: musicSubTitle,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.laptop, color: whiteColor),
                      ),
                      // Icon(Icons.thumb_up, color: whiteColor),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 16.0),
                        child: Icon(Icons.pause, color: whiteColor),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Stack(
                      children: [
                        Container(
                          width: width * 0.98,
                          height: 2,
                          color: Colors.white.withOpacity(0.3),
                        ),
                        Container(
                          width: width * 0.5,
                          height: 2,
                          color: whiteColor,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

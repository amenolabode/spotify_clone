import 'package:flutter/material.dart';
import 'style.dart';

class SearchCards extends StatelessWidget {
  final Color backgroundColor;
  final String searchComponentsImage;
  final String searchCardText;

  const SearchCards(
      {Key? key,
      required this.backgroundColor,
      required this.searchComponentsImage,
      required this.searchCardText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Stack(children: [
        ClipRRect(
          child: Container(
            height: 100,
            width: width * 0.4382,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                    child: Text(
                      searchCardText,
                      style: whiteTextStyle,
                    ),
                  ),
                ),
                SizedBox(
                  // color: Colors.black,
                  height: 100,
                  width: 90,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20,
                        bottom: 0,
                        right: -16,
                        child: RotationTransition(
                          turns: const AlwaysStoppedAnimation(30 / 360),
                          child: Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  blurRadius: 0.5,
                                  spreadRadius: 0.5,
                                  offset: const Offset(0, 2))
                            ]),
                            height: 100,
                            width: 70,
                            child: Image.asset(
                              searchComponentsImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:spotify/Components/search_components.dart';
import 'package:spotify/Components/style.dart';

class SearchPage extends StatelessWidget {
  // final Color backgroundColor;
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              stops: [0, 0.4],
              colors: [
                Color(0xff4B3F3A),
                Color(0xff000000),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 32.0),
                child: Text(
                  "Search",
                  style: sectionTitle,
                ),
              ),
              SearchBar(width),
              const Padding(
                padding: EdgeInsets.only(top: 24.0, bottom: 16),
                child: Text(
                  "Your top genres",
                  style: whiteTextStyle,
                ),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: SearchCards(
                        backgroundColor: Colors.orange,
                        searchComponentsImage: "Assets/Images/Afterburner.png",
                        searchCardText: "Hip-Hop"),
                  ),
                  SearchCards(
                      backgroundColor: Colors.purple,
                      searchComponentsImage: "Assets/Images/image 11.png",
                      searchCardText: "Rap")
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: SearchCards(
                        backgroundColor: Colors.red,
                        searchComponentsImage: "Assets/Images/Afterburner.png",
                        searchCardText: "Afro"),
                  ),
                  SearchCards(
                      backgroundColor: Colors.blue,
                      searchComponentsImage: "Assets/Images/image 11.png",
                      searchCardText: "Christian & Gospel")
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Row SearchBar(double width) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(4)),
              height: 50,
              width: width * 0.9,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 12.0),
                      child: Icon(
                        Icons.search,
                        size: 36,
                      ),
                    ),
                    Text(
                      "Artists, Song or podcasts",
                      style: blackTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

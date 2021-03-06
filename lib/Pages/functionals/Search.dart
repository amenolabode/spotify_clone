import 'package:flutter/material.dart';
import 'Search_body.dart';
import 'package:spotify/Components/style.dart';

class SearchPage extends StatefulWidget {
  // final Color backgroundColor;
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
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
        ListView(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Search",
                  style: sectionTitle,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: searchBar(width),
                ),
              ],
            ),
          ),
          SearchPageBody()
        ]),
      ]),
    );
  }

  Row searchBar(double width) {
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

import 'package:flutter/material.dart';

class AlbumViewBody extends StatefulWidget {
  const AlbumViewBody({Key? key}) : super(key: key);

  @override
  State<AlbumViewBody> createState() => _AlbumViewBodyState();
}

class _AlbumViewBodyState extends State<AlbumViewBody> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          height: height,
          decoration: BoxDecoration(color: Colors.purple),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height,
                width: width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [
                        0,
                        0.5
                      ],
                      colors: [
                        Color(0xff4B3F3A),
                        Color(0xff000000),
                      ]),
                ),
                child: SafeArea(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 240,
                        width: 240,
                        child: Image.asset(
                          "Assets/Images/pexels-freestocksorg-96380.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 500,
                color: Colors.black,
              )
            ],
          ),
        )
      ],
    );
  }
}

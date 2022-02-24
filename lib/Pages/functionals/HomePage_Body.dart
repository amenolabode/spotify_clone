import 'package:flutter/material.dart';
import 'package:spotify/Components/Previous_listen_card.dart';
import 'package:spotify/Components/style.dart';
import 'package:spotify/Components/Circular_Listen.dart';
import 'package:spotify/Components/Square_Listen_Card.dart';
import 'package:spotify/Components/section_cards.dart';
import 'package:spotify/Components/home_playing_navigation.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Stack(
          children: [
            Container(
              height: height * 2,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.center,
                  stops: [0.0, 0.9],
                  colors: [
                    // Color(0xff705D57),
                    Color(0xff4B3F3A),
                    Color(0xff000000),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: Container(
                child: ListView(
                  children: [
                    SizedBox(
                      width: width,
                      height: 48,
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text(
                              "Good Evening",
                              style: sectionTitle,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Icon(
                              Icons.notifications_active,
                              color: whiteColor,
                              size: 24,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Icon(
                              Icons.history,
                              color: whiteColor,
                              size: 24,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Icon(
                              Icons.settings,
                              color: whiteColor,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: PreviousListenCard(
                              previousListenText: "TextData",
                              heroImage: "Assets/Images/image 11.png"),
                        ),
                        PreviousListenCard(
                            previousListenText: "TextData",
                            heroImage: "Assets/Images/image 11.png"),
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: PreviousListenCard(
                              previousListenText: "TextData",
                              heroImage: "Assets/Images/image 11.png"),
                        ),
                        PreviousListenCard(
                            previousListenText: "TextData",
                            heroImage: "Assets/Images/image 11.png"),
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: PreviousListenCard(
                              previousListenText: "TextData",
                              heroImage: "Assets/Images/image 11.png"),
                        ),
                        PreviousListenCard(
                            previousListenText: "TextData",
                            heroImage: "Assets/Images/image 11.png"),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 28, bottom: 16.0),
                      child: Text(
                        "Jump back in",
                        style: sectionTitle,
                      ),
                    ),
                    SizedBox(
                      height: 140,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          CircluarListen(
                              circularImage:
                                  "Assets/Images/Dance Gavin Dance - Members.png",
                              circularMusicTitle: "Dance Gavin \nDance"),
                          SquareListen(
                              squareImage: "Assets/Images/image 12.png",
                              squareMusicTitle: "Carnival"),
                          SquareListen(
                              squareImage: "Assets/Images/image 11.png",
                              squareMusicTitle: "Carnival"),
                          SquareListen(
                              squareImage:
                                  "Assets/Images/pexels-freestocksorg-96380.jpg",
                              squareMusicTitle: "Tickets to my downfall"),
                          SquareListen(
                              squareImage: "Assets/Images/image 12.png",
                              squareMusicTitle: "Carnival"),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 28, bottom: 16.0),
                      child: Text(
                        "Recently Played",
                        style: sectionTitle,
                      ),
                    ),
                    SizedBox(
                      height: 184,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          SectionCards(
                              squareImage: "Assets/Images/Afterburner.png",
                              squareMusicTitle: "Carnival",
                              squareMusicSubtitle: "Album",
                              squareMusicSubtitleName: "Afterburner"),
                          SectionCards(
                              squareImage: "Assets/Images/Afterburner.png",
                              squareMusicTitle: "Carnival",
                              squareMusicSubtitle: "Album",
                              squareMusicSubtitleName: "Afterburner"),
                          SectionCards(
                              squareImage: "Assets/Images/Afterburner.png",
                              squareMusicTitle: "Carnival",
                              squareMusicSubtitle: "Album",
                              squareMusicSubtitleName: "Afterburner"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28, bottom: 16.0),
                      child: Row(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "Assets/Images/Afterburner.png",
                              height: 50,
                              width: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 4.0),
                                  child: Text(
                                    "MORE LIKE",
                                    style: musicSubTitle,
                                  ),
                                ),
                                Text(
                                  "Your top mixes",
                                  style: sectionTitle,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 184,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          SectionCards(
                              squareImage: "Assets/Images/Afterburner.png",
                              squareMusicTitle: "Carnival",
                              squareMusicSubtitle: "Album",
                              squareMusicSubtitleName: "Afterburner"),
                          SectionCards(
                              squareImage: "Assets/Images/Afterburner.png",
                              squareMusicTitle: "Carnival",
                              squareMusicSubtitle: "Album",
                              squareMusicSubtitleName: "Afterburner"),
                          SectionCards(
                              squareImage: "Assets/Images/Afterburner.png",
                              squareMusicTitle: "Carnival",
                              squareMusicSubtitle: "Album",
                              squareMusicSubtitleName: "Afterburner"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const Positioned(
          bottom: 0,
          child: PlayingBar(),
        ),
      ],
    );
  }
}

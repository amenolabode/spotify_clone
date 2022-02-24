import 'package:flutter/material.dart';
import 'package:spotify/Components/style.dart';
import 'package:like_button/like_button.dart';

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
          decoration: const BoxDecoration(color: Colors.black),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: height,
                width: width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0, 0.6],
                    colors: [
                      Color(0xff4B3F3A),
                      Color(0xff000000),
                    ],
                  ),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: SizedBox(
                            height: 240,
                            width: 240,
                            child: Image.asset(
                              "Assets/Images/pexels-freestocksorg-96380.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "The Cavemen.",
                                style: sectionTitle,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, bottom: 12),
                                child: Row(
                                  children: [
                                    ClipOval(
                                      child: SizedBox(
                                          height: 24,
                                          width: 24,
                                          child: Image.asset(
                                              "Assets/Images/Afterburner.png")),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "Playlist Owners Name",
                                        style: musicTitle,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 4.0, bottom: 8.0),
                                child: Row(
                                  children: [
                                    const Text(
                                      "80 Likes",
                                      style: musicSubTitle,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 4.0, right: 4.0),
                                      child: ClipOval(
                                        child: Container(
                                          color: grey,
                                          height: 4,
                                          width: 4,
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "1h 45min",
                                      style: musicSubTitle,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, bottom: 24),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          LikeButton(
                                            circleColor: const CircleColor(
                                                start: primaryColor,
                                                end: primaryColor),
                                            bubblesColor: const BubblesColor(
                                              dotPrimaryColor:
                                                  Color(0xff33b5e5),
                                              dotSecondaryColor:
                                                  Color(0xff0099cc),
                                            ),
                                            likeBuilder: (bool isLiked) {
                                              return Icon(
                                                Icons.favorite,
                                                size: 30,
                                                color: isLiked
                                                    ? primaryColor
                                                    : Colors.white,
                                                // size: buttonSize,
                                              );
                                            },
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, right: 20.0),
                                            child: Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  border: Border.all(
                                                      width: 2, color: grey)),
                                              child: const Icon(
                                                Icons.arrow_downward_sharp,
                                                color: grey,
                                                size: 14,
                                              ),
                                            ),
                                          ),
                                          const Icon(
                                            Icons.more_vert,
                                            color: grey,
                                            size: 30,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: const Icon(
                                        Icons.play_arrow,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              _musicRowItem("Akaraka", "disabledText"),
                              _musicRowItem("Akaraka", "disabledText"),
                              _musicRowItem("Akaraka", "disabledText"),
                              _musicRowItem("Akaraka", "disabledText"),
                              _musicRowItem("Akaraka", "disabledText"),
                              _musicRowItem("Akaraka", "disabledText"),
                              _musicRowItem("Akaraka", "disabledText"),
                              _musicRowItem("Akaraka", "disabledText"),
                              _musicRowItem("Akaraka", "disabledText"),
                              _musicRowItem("Akaraka", "disabledText"),
                              _musicRowItem("Akaraka", "disabledText")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: height,
                color: Colors.black,
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _musicRowItem(String title, String disabledText) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Row(
        children: [
          // Remember this!!!!!!!!!!!
          // const Padding(padding: EdgeInsets.symmetric(vertical: 40)),
          ClipRRect(
            child: SizedBox(
                // color: iconBg,
                height: 44,
                width: 44,
                child: Image.asset("Assets/Images/Afterburner.png")),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    child: Text(
                      title,
                      style: whiteTextStyle,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(100)),
                        child: const Icon(
                          Icons.download,
                          color: blackColor,
                          size: 10,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          height: 14,
                          width: 40,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: grey,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              const Center(
                                child: Text(
                                  "LYRICS",
                                  style: blackCaption,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Text(
                        "The Cavemen.",
                        style: streamNumber,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),

          const Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

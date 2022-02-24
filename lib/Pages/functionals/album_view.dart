import 'package:flutter/material.dart';
import 'package:spotify/Components/home_playing_navigation.dart';
import 'package:spotify/Components/style.dart';
import 'album_view_body.dart';
import 'HomePage.dart';

class AlbumView extends StatelessWidget {
  const AlbumView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.transparent,
        // shadowColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 32,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          color: whiteColor,
        ),

        shadowColor: null,
      ),
      body: Stack(
        children: [
          AlbumViewBody(),
          Positioned(
            bottom: 0,
            child: PlayingBar(),
          ),
        ],
      ),
    );
  }
}

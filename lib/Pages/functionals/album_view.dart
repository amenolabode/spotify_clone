import 'dart:html';

import 'package:flutter/material.dart';

class AlbumView extends StatelessWidget {
  const AlbumView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 240,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("data"),
            background: Image.asset("name"),
          ),
        ),
        // SliverList(delegate: delegate)
      ]),
    );
  }
}

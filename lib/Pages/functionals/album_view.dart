import 'package:flutter/material.dart';

class AlbumView extends StatelessWidget {
  const AlbumView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            // decoration: BoxDecoration(color: Colors.black),
            ),
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                      stops: [0, 0.5],
                      colors: [Colors.white, Colors.amber]),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

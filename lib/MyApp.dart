import 'package:flutter/material.dart';
import 'package:spotify/Pages/functionals/HomePage.dart';
import 'Pages/functionals/album_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/albumview': (context) => const AlbumView(),
        '/homepage': (context) => const AlbumView(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

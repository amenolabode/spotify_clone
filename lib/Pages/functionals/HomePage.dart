import 'package:flutter/material.dart';
import 'HomePage_Body.dart';
import 'Search.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  final screens = [
    const HomePageBody(),
    SearchPage(),
    const Center(
      child: Text("Cal"),
    ),
    const Center(
      child: Text("Prof"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Color(0xff020202).withOpacity(0),
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 12,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              color: Color(0xffB1BBC3),
            ),
          ),
        ),
        child: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          backgroundColor: const Color(0xff020202),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              selectedIcon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
              selectedIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              label: "Search",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.library_books_outlined,
                color: Colors.white,
              ),
              selectedIcon: Icon(
                Icons.library_books,
                color: Colors.white,
              ),
              label: "Your Library",
            )
          ],
        ),
      ),
    );
  }
}

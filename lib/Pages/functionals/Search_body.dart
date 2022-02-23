import 'package:flutter/material.dart';
import 'package:spotify/Components/search_components.dart';
import 'package:spotify/Components/style.dart';

class SearchPageBody extends StatelessWidget {
  // final Color backgroundColor;
  const SearchPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
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
          ),
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
    );
  }
}

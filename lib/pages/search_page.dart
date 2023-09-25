import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Center(child: Image(image: AssetImage("assets/images/DeskLive.png"))
                // Text(
                //   "DeskLive",
                //   style: TextStyle(fontSize: 22),
                // ),
                ),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh_outlined, size: 36),
            onPressed: () {
              // Navigate to the second page when the IconButton is pressed
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            },
          ),
        ],
      ),
      body: Column(children: [
        Center(
          child: Container(
            width: 380, // Set the desired width
            height: 60, // Set the desired height
            decoration: BoxDecoration(
              color: Colors.white, // Set the desired background color
              borderRadius:
                  BorderRadius.circular(25), // Optional: add rounded corners
            ),
            child: SearchBar(
              // backgroundColor: Color(0xffFFFFFF),
              leading: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  print('command');
                },
              ),
              hintText: "Search",
            ),
          ),
        )
      ]),
    );
  }
}

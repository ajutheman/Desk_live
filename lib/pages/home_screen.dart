import 'package:flutter/material.dart';

import '../widget/category_list.dart';
// Import your CategoryList widget

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "DeskLive",
            style: TextStyle(fontSize: 22),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, size: 36),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // List of news articles using a ListView.builder
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                color: Colors.white10,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount:
                      4, // Replace with your actual number of news articles
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 67,
                          width: 67,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffD9D9D9),
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                            height:
                                8), // Adjust the spacing between the image and subtitle
                        Text(
                          "News Article $index", // Replace with the actual article title
                          style: TextStyle(
                            fontSize: 12, // Adjust the font size as needed
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 21);
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  height: 200,
                  width: 400,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(
                        Radius.circular(20.0)), // Adjust the radius as needed
                  )),
            ),
            // Add the CategoryList widget here
            CategoryList(), // Replace with your CategoryList widget
          ],
        ),
      ),
    );
  }
}

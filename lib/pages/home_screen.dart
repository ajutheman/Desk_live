import 'package:flutter/material.dart';

import '../widget/text_widgect_home_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: TextWidget(
            text: "DeskLive",
            fontSize: 22,
            onPressed: () {
              print("123");
            },
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
            // SizedBox(height: 20),
            // List of news articles using a ListView.builder
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              color: Colors.white,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount:
                    4, // Replace with your actual number of news articles
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 67,
                      width: 67,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 22);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

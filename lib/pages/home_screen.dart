import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils.dart';
import '../widget/category_biulder.dart';
import '../widget/news_card.dart';
// Import your CategoryList widget

class HomeScreen extends StatelessWidget {
  final List<NewsArticle> newsArticles = [
    NewsArticle(
      iconPath:
          'assets/icons/Vector.svg', // Replace with your actual icon paths
      title: 'ട്രെൻഡിങ് ',
    ),
    NewsArticle(
      iconPath:
          'assets/icons/Vector1.svg', // Replace with your actual icon paths
      title: 'ടോപ് സ്റ്റോറീസ് ',
    ),
    NewsArticle(
      iconPath:
          'assets/icons/vector2.svg', // Replace with your actual icon paths
      title: 'മൈ ഫീഡ് ',
    ),
    NewsArticle(
      iconPath:
          'assets/icons/vector3.svg', // Replace with your actual icon paths
      title: 'ഓൾ ന്യൂസ് ',
    ),
    // Add more articles as needed
  ];

  HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    //  var newsArticles;

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
              padding: const EdgeInsets.all(29.0),
              child: Container(
                width: screenWidth(context),
                //  MediaQuery.of(context).size.width,
                height: 120,
                color: Color(0xffFFFFFF),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: newsArticles.length, // Use the length of your list
                  itemBuilder: (context, index) {
                    final article = newsArticles[index];
                    return GestureDetector(
                      onTap: () {
                        print("object");
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 76,
                            width: 76,
                            decoration: BoxDecoration(
                              color: Color(0xffD9D9D9),
                              border: Border.all(
                                color: Color(0xffD9D9D9),
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                article
                                    .iconPath, // Use the SVG path from your NewsArticle instance
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            article
                                .title, // Use the title from your NewsArticle instance
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  },

                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 21);
                  },
                ),
              ),
            ),

            Container(
              // height: screenHeight(context, dividedBy: 3.5),
              // width: screenWidth(context, dividedBy: 1.2),
              child: NewsCard(
                imagePath:
                    'assets/images/pexels-photo-1684916.jpg', // Provide the image path
                title:
                    "കേരളത്തിൽ2 ജില്ലകളിൽയെല്ലോ അലർട്ട് പ്രഖ്യാപിച്ചു", // Provide the title
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
            ),

            // Add more NewsCard widgets with different data as needed

//feeding news field container
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Container(
//                   height: 246,
//                   width: 334,
//                   //color: Colors.red,
//                   decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     borderRadius: BorderRadius.all(
//                         Radius.circular(20.0)), // Adjust the radius as needed
//                   )),
//             ),
            // Add the CategoryList widget here
            CategoryBuilder(),
            //CategoryList(), // Replace with your CategoryList widget
          ],
        ),
      ),
    );
  }
}

class NewsArticle {
  final String iconPath;
  final String title;

  NewsArticle({required this.iconPath, required this.title});
}

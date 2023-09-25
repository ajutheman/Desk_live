import 'package:app_templet/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils.dart';
import '../widget/category_biulder.dart';
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
      backgroundColor: Color(0xffFFFAE7),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFAE7),
        title:
            Center(child: Image(image: AssetImage("assets/images/DeskLive.png"))
                // Text(
                //   "DeskLive",
                //   style: TextStyle(fontSize: 22),
                // ),
                ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, size: 36),
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
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenHeight(context, dividedBy: 1),
          width: screenWidth(context, dividedBy: 1),
          child: Column(
            children: [
              // List of news articles using a ListView.builder
              Padding(
                padding: const EdgeInsets.all(29.0),
                child: Container(
                  width: screenWidth(context),
                  //  MediaQuery.of(context).size.width,
                  height: 120,
                  color: Color(0xffFFFAE7),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: newsArticles.length,
                    // Use the length of your list
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
                                  article.iconPath,
                                  // Use the SVG path from your NewsArticle instance
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              article.title,
                              // Use the title from your NewsArticle instance
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

              NewsCard(
                imagePath:
                    'https://cdn.britannica.com/87/186687-050-3AA9E551/Justin-Trudeau-2015.jpg',
                // Provide the image path
                title: "വിമാനത്തിന് തകരാർ,"
                    "ജസ്റ്റിൻ ട്രൂഡോയും സംഘവും"
                    " ഇന്ന് മടങ്ങില്ല ഇന്ത്യയിൽ തുടരും", // Provide the title
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
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
      ),
    );
  }
}
//news card class code
//convert from widget to class

class NewsArticle {
  final String iconPath;
  final String title;

  NewsArticle({required this.iconPath, required this.title});
}

class NewsCard extends StatelessWidget {
  final String imagePath;
  final String title;

  NewsCard({required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Container(
        // child:
        // Align(
        //   alignment: Alignment.bottomCenter,
        //   child: Text(
        //     title, // Use the provided title
        //     style: TextStyle(
        //       color: Colors.white,
        //       fontSize: 14, // Adjust the font size as needed
        //       fontWeight: FontWeight.bold,
        //     ),
        //     textAlign: TextAlign.center,
        //   ),
        // ),
        height: screenHeight(context, dividedBy: 3.7),
        width: screenWidth(context, dividedBy: 1.1),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(imagePath),
              // image: AssetImage(
              //   imagePath,
              // ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.stretch,
        //   children: [
        //     // Background asset image
        //     Image.asset(
        //       imagePath, // Use the provided imagePath
        //       height: 100, // Adjust the height as needed
        //       fit: BoxFit.cover,
        //     ),
        //
        //     // Gradient overlay
        //     // Container(
        //     //   height: 20, // Adjust the height as needed
        //     //   decoration: BoxDecoration(
        //     //     gradient: LinearGradient(
        //     //       begin: Alignment.topCenter,
        //     //       end: Alignment.bottomCenter,
        //     //       colors: [
        //     //         Colors.transparent, // Start with transparent color
        //     //         Colors.black.withOpacity(0.5), // Adjust opacity as needed
        //     //       ],
        //     //     ),
        //     //   ),
        //     // ),
        //
        //     // Text on top of the image
        //     // Expanded(
        //     //   child: Center(
        //     //     child: Padding(
        //     //       padding: const EdgeInsets.all(16.0),
        //           child: Text(
        //             title, // Use the provided title
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 24, // Adjust the font size as needed
        //               fontWeight: FontWeight.bold,
        //             ),
        //             textAlign: TextAlign.center,
        //           ),
        //     //     ),
        //     //   ),
        //     // ),
        //   ],
        // ),
        child: Container(
          height: screenHeight(context, dividedBy: 3.5),
          width: screenWidth(context, dividedBy: 1.1),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(.1),
                  Colors.black.withOpacity(1),
                ]),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child:
                // TextWidget(text: title),
                Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                title, // Use the provided title
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19, // Adjust the font size as needed
                  fontWeight: FontWeight.w700, height: 1.5,
                ),
                // textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CategoryBuilder extends StatefulWidget {
  @override
  _CategoryBuilderState createState() => _CategoryBuilderState();
}

class _CategoryBuilderState extends State<CategoryBuilder> {
  int selectedContainerIndex = 1;

  List<IconData> icons = [
    Icons.home,
    Icons.business,
    Icons.school,
    Icons.favorite,
    Icons.star,
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(icons.length, (index) {
              bool isSelected = selectedContainerIndex == index;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedContainerIndex =
                        isSelected ? -1 : index; // Toggle selection
                  });
                },
                child: AnimatedContainer(
                  width: 50,
                  height: isSelected ? 99 : 59,
                  duration: Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected ? Colors.blue : Colors.grey,
                  ),
                  child: Center(
                    child: Icon(
                      icons[index],
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            }),
          ),
          selectedContainerIndex != -1
              ? CategoryDetails(
                  imageIndex: selectedContainerIndex,
                  headline:
                      'News Headline for category $selectedContainerIndex',
                )
              : SizedBox(),
        ],
      ),
    );
  }
}

class CategoryDetails extends StatelessWidget {
  final int imageIndex;
  final String headline;

  CategoryDetails({
    required this.imageIndex,
    required this.headline,
  });

  @override
  Widget build(BuildContext context) {
    List<String> imageUrls = [
      'https://images.pexels.com/photos/3021310/pexels-photo-3021310.jpeg?auto=compress&cs=tinysrgb&w=800',
      'https://example.com/business.jpg',
      'https://example.com/school.jpg',
      'https://example.com/favorite.jpg',
      'https://example.com/star.jpg',
    ];

    return Padding(
      padding: const EdgeInsets.all(23.0),
      child: Column(
        children: [
          Card(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(16),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        // Color(
                        //     0xFF0000FF), // You can set the background color
                        backgroundImage: NetworkImage(imageUrls[imageIndex]),
                      ),
                    ),
                    Text(
                      headline,
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
                ),
                // Padding(
                //   padding: const EdgeInsets.all(16.0),
                //   child: Text(
                //     headline,
                //     style: TextStyle(fontSize: 24),
                //   ),
                // ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(16),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(
                            0xFF0000FF), // You can set the background color
                        backgroundImage: NetworkImage(imageUrls[imageIndex]),
                      ),
                    ),
                    Text(
                      headline,
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
                ),
                // Padding(
                //   padding: const EdgeInsets.all(16.0),
                //   child: Text(
                //     headline,
                //     style: TextStyle(fontSize: 24),
                //   ),
                // ),
              ],
            ),
          ),
          Card(
            color: Color(0xFFECA1),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(16),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(
                            0xFF0000FF), // You can set the background color
                        backgroundImage: NetworkImage(imageUrls[imageIndex]),
                      ),
                    ),
                    Text(
                      headline,
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
                ),
                // Padding(
                //   padding: const EdgeInsets.all(16.0),
                //   child: Text(
                //     headline,
                //     style: TextStyle(fontSize: 24),
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

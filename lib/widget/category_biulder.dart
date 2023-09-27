import 'package:app_templet/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryBuilder extends StatefulWidget {
  @override
  _CategoryBuilderState createState() => _CategoryBuilderState();
}

class _CategoryBuilderState extends State<CategoryBuilder> {
  int selectedContainerIndex = 1;
  List<String> headline1 = [
    "സോളാർ ലൈംഗികാരോപണം:എല്ലാം പണത്തിനുവേണ്ടിയെന്ന CBI",
    ""
  ];
  List<String> iconsList = [
    "assets/icons/fluent_arrow-trending-text-24-regular.svg",
    "assets/icons/fluent-mdl2_world.svg",
    "assets/icons/3catgri.svg",
    "assets/icons/flim.svg",
    "assets/icons/lastcat.svg"
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        // height: 100,
        width: screenWidth(context, dividedBy: 1),
        child: Column(
          children: <Widget>[
            SizedBox(
              width: screenWidth(context, dividedBy: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(iconsList.length, (index) {
                  bool isSelected = selectedContainerIndex == index;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedContainerIndex =
                            isSelected ? -1 : index; // Toggle selection
                      });
                    },
                    child: Container(
                      width: isSelected ? 65 : 49,
                      height: isSelected ? 65 : 49,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            isSelected ? Color(0xffFECC07) : Color(0xffFFECA1),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          iconsList[index],
                        ),
                      ),
                    ),
                  );
                }),
              ),
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
      'https://images.pexels.com/photos/3021310/pexels-photo-3021310.jpeg?auto=compress&cs=tinysrgb&w=800',
      'https://images.pexels.com/photos/3021310/pexels-photo-3021310.jpeg?auto=compress&cs=tinysrgb&w=800',
      'https://images.pexels.com/photos/3021310/pexels-photo-3021310.jpeg?auto=compress&cs=tinysrgb&w=800',
      'https://images.pexels.com/photos/3021310/pexels-photo-3021310.jpeg?auto=compress&cs=tinysrgb&w=800',
    ];

    return Expanded(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return buildCard(index, headline, imageUrls);
        },
      ),
    );
  }

  Widget buildCard(int imageIndex, String headline, List<String> imageUrls) {
    return Card(
      color: Color(0xffFFECA1),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(16),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xFF0000FF),
                  backgroundImage: NetworkImage(imageUrls[imageIndex]),
                ),
              ),
              Text(
                headline,
                style: TextStyle(fontSize: 19),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

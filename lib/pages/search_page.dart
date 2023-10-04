import 'package:app_templet/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../model/news_model.dart';
import '../widget/text_widgect_home_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool limitedTopice = false;
  bool showAllTopics = false;
  bool showAllItems = false;
  List isSelectetList = [];
  List trendingList = [
    "iphone",
    "movies",
    "sports",
    "local",
    "trending",
    "iphone",
    "movies",
    "iphone",
    "movies",
    "sports",
    "local",
    "trending",
    "iphone",
    "movies",
    "local",
    "trending",
    "iphone",
    "movies",
    "trending",
  ];
  List<NewsModel> newsList = [
    //business id -1
    NewsModel(
      imageUrl:
          'https://malayalam.samayam.com/thumb/103952319/lulu-103952319.jpg?imgsize=1156771&width=700&height=525&resizemode=75',
      title:
          "ഇന്ത്യയിലെ പ്രധാന നഗരങ്ങളിലേക്ക് ലുലു മാൾ; ചെന്നൈയിൽ വമ്പൻ മാൾ അടുത്ത വർഷം തുറക്കും",
      description: "description",
      location: "location",
      categoryModel: CategoryModel(id: -1, name: "business"),
      author: "author",
      dateTime: DateTime.now(),
    ),
    NewsModel(
      imageUrl:
          'https://malayalam.samayam.com/thumb/103934388/bill-malhotra-103934388.jpg?imgsize=35140&width=700&height=525&resizemode=75',
      title:
          "22-ാം വയസിൽ ഇന്ത്യയിൽ നിന്ന് കാനഡയിൽ എത്തിയതാണ്; ബിൽ മൽഹോത്രയുടെ ആസ്തി 15,570 കോടി രൂപ",
      description: "description",
      location: "location",
      categoryModel: CategoryModel(id: -1, name: "business"),
      author: "author",
      dateTime: DateTime.now(),
    ),
    NewsModel(
      imageUrl:
          'https://malayalam.samayam.com/thumb/103832780/akasa-air-103832780.jpg?imgsize=770399&width=700&height=525&resizemode=75',
      title: "ദിശയറിയാതെ ആകാശ; പൈലറ്റുമാർ കൂട്ടത്തോടെ കമ്പനി വിടുന്നു",
      description: "description",
      location: "location",
      categoryModel: CategoryModel(id: -1, name: "business"),
      author: "author",
      dateTime: DateTime.now(),
    ),
    NewsModel(
      imageUrl:
          'https://malayalam.samayam.com/thumb/103783105/tata-motors-103783105.jpg?imgsize=26476&width=700&height=525&resizemode=75',
      title: "ടാറ്റ കാറുകൾക്ക് വില കൂടും; മറ്റ് മോഡലുകൾക്ക് വില കൂടുമോ?",
      description: "description",
      location: "location",
      categoryModel: CategoryModel(id: -1, name: "business"),
      author: "author",
      dateTime: DateTime.now(),
    ),
    NewsModel(
      imageUrl:
          'https://malayalam.samayam.com/thumb/103783105/tata-motors-103783105.jpg?imgsize=26476&width=700&height=525&resizemode=75',
      title: "ടാറ്റ കാറുകൾക്ക് വില കൂടും; മറ്റ് മോഡലുകൾക്ക് വില കൂടുമോ?",
      description: "description",
      location: "location",
      categoryModel: CategoryModel(id: -1, name: "business"),
      author: "author",
      dateTime: DateTime.now(),
    ),
    //world id 0
    NewsModel(
      imageUrl:
          "https://cdn.britannica.com/87/186687-050-3AA9E551/Justin-Trudeau-2015.jpg",
      title:
          "വിമാനത്തിന് തകരാർ ജസ്റ്റിൻ ട്രൂഡോയും സംഘവും ഇന്ന് മടങ്ങില്ല ഇന്ത്യയിൽ തുടരും",
      categoryModel: CategoryModel(id: 0, name: "world"),
      description: "description",
      location: "location",
      author: "author",
      dateTime: DateTime.now(),
    ),
    NewsModel(
      imageUrl:
          "https://malayalam.samayam.com/thumb/103856258/justine-trudeo-103856258.jpg?imgsize=1395127&width=700&height=525&resizemode=75",
      title:
          "നിജ്ജാർ വധം വിശ്വസിക്കാൻ കാരണമുണ്ടെന്ന് ട്രൂഡോ; ഇന്ത്യക്കെതിരെ വീണ്ടും കാനഡ പ്രധാനമന്ത്രി; പക്ഷെ തെളിവ്...",
      categoryModel: CategoryModel(id: 0, name: "world"),
      description: "description",
      location: "location",
      author: "author",
      dateTime: DateTime.now(),
    ),
    NewsModel(
      imageUrl:
          "https://malayalam.samayam.com/thumb/103772902/us-prisoners-103772902.jpg?imgsize=47158&width=700&height=525&resizemode=75",
      title:
          "കൈമാറ്റ ഉടമ്പടി പ്രകാരം ഇറാന്‍ വിട്ടയച്ച അഞ്ച് അമേരിക്കന്‍ തടവുകാര്‍ ദോഹയിലെത്തി",
      categoryModel: CategoryModel(id: 0, name: "world"),
      description: "description",
      location: "location",
      author: "author",
      dateTime: DateTime.now(),
    ),
    //indain id 1
    NewsModel(
      imageUrl:
          'https://malayalam.samayam.com/thumb/103966115/post-office-insurance-103966115.jpg?imgsize=1838817&width=700&height=525&resizemode=75',
      title:
          "1,515 രൂപ വീതം നിക്ഷേപത്തിനായി മാറ്റി വക്കാമോ? 35 ലക്ഷം രൂപ നൽകുന്ന പോസ്റ്റോഫീസ് ഇൻഷുറൻസ്",
      description: "description",
      location: "location",
      author: "author",
      categoryModel: CategoryModel(id: 1, name: "indain"),
      dateTime: DateTime.now(),
    ),
    NewsModel(
      imageUrl:
          'https://malayalam.samayam.com/thumb/103866529/elephant-arikomban-103866529.jpg?imgsize=37082&width=700&height=525&resizemode=75',
      title:
          "അരി വേണ്ട, ചിന്നക്കനാൽ പോലെ മഞ്ചോലയും'; അരിക്കൊമ്പൻ്റെ ജീവിതമാകെ മാറി",
      description: "description",
      location: "location",
      categoryModel: CategoryModel(id: 1, name: "indain"),
      author: "author",
      dateTime: DateTime.now(),
    ),
    NewsModel(
      imageUrl:
          'https://malayalam.samayam.com/thumb/103966115/post-office-insurance-103966115.jpg?imgsize=1838817&width=700&height=525&resizemode=75',
      title:
          "1,515 രൂപ വീതം നിക്ഷേപത്തിനായി മാറ്റി വക്കാമോ? 35 ലക്ഷം രൂപ നൽകുന്ന പോസ്റ്റോഫീസ് ഇൻഷുറൻസ്",
      description: "description",
      location: "location",
      categoryModel: CategoryModel(id: 1, name: "indain"),
      author: "author",
      dateTime: DateTime.now(),
    ),

    //movie id 2
    NewsModel(
      imageUrl:
          'https://malayalam.samayam.com/thumb/103979129/supriya-menon-instagram-about-cyber-bullying-experience-103979129.jpg?imgsize=102994&width=700&height=525&resizemode=75',
      title:
          "കാലങ്ങളായി ഇത് തുടങ്ങിയിട്ട്! ഡാഡിയെക്കുറിച്ച് വരെ മോശം പറഞ്ഞു! അവളെന്തിന് ഇങ്ങനെ ചെയ്യുന്നു എന്നറിയില്ല! അനുഭവം പങ്കുവെച്ച് സുപ്രിയ മേനോൻ",
      description: "description",
      location: "location",
      categoryModel: CategoryModel(id: 2, name: "movie"),
      author: "author",
      dateTime: DateTime.now(),
    ),
    NewsModel(
      imageUrl:
          'https://malayalam.samayam.com/thumb/103964209/asi-ali-103964209.jpg?imgsize=98700&width=700&height=525&resizemode=75',
      title:
          "'നിങ്ങൾക്ക് പ്രാന്താണോ ചേട്ടാ'! ഞങ്ങൾ രണ്ടും മാറിപ്പോയി ശർദ്ധിച്ചു, എല്ലാവരും ചേട്ടനെ തെറ്റിദ്ധരിച്ചിരിക്കുന്നതാണ്; വിനായകനെ കുറിച്ച് പറഞ്ഞ് ആസിഫ് അലി!",
      description: "description",
      location: "location",
      categoryModel: CategoryModel(id: 2, name: "movie"),
      author: "author",
      dateTime: DateTime.now(),
    ),
    NewsModel(
      imageUrl:
          'https://malayalam.samayam.com/thumb/103974773/ganesh-kumar-and-manoj-k-jayan-s-funny-moment-with-shwetha-menon-103974773.jpg?imgsize=79682&width=700&height=525&resizemode=75',
      title:
          "എന്നെ കെട്ടിപ്പിടിക്കാമോയെന്ന് ചോദിച്ചവനെ ഓടിച്ചു! ശ്വേത മേനോനെക്കുറിച്ച് ഗണേഷും മനോജ് കെ ജയനും പറഞ്ഞത്",
      description: "description",
      location: "location",
      categoryModel: CategoryModel(id: 2, name: "movie"),
      author: "author",
      dateTime: DateTime.now(),
    ),
    NewsModel(
      imageUrl:
          'https://malayalam.samayam.com/thumb/103975812/nithya-menon-103975812.jpg?imgsize=65568&width=700&height=525&resizemode=75',
      title:
          "ആ സൂപ്പർ ഹീറോ നിത്യയോട്‌ മോശമായി പെരുമാറി! പ്രചരിക്കുന്ന വാർത്തകൾക്ക് പിന്നിലെ യാഥാർഥ്യം; നിത്യാമേനോന്റെ മറുപടി",
      description: "description",
      location: "location",
      categoryModel: CategoryModel(id: 2, name: "movie"),
      author: "author",
      dateTime: DateTime.now(),
    ),

    //local id 3
    NewsModel(
      imageUrl:
          'https://malayalam.samayam.com/thumb/103977278/nileshwar-kottappuram-house-boat-terminal-welcomes-tourists-103977278.jpg?imgsize=116192&width=700&height=525&resizemode=75',
      title:
          "പുരവഞ്ചിയിൽ ഒരു കായൽ യാത്ര; കണ്ടൽക്കാടിനെ അറിയാം, പ്രകൃതിസൗന്ദര്യം നുകരാം; സഞ്ചാരികളെ വടക്കോട്ട് വായോ",
      description: "description",
      location: "location",
      categoryModel: CategoryModel(id: 3, name: "local"),
      author: "author",
      dateTime: DateTime.now(),
    ),
    NewsModel(
      imageUrl:
          'https://malayalam.samayam.com/thumb/103973893/panavally-tiger-news-103973893.jpg?imgsize=41672&width=700&height=525&resizemode=75',
      title:
          "വയനാട് പനവല്ലിയിൽ ആശ്വാസം; ഒന്നരമാസത്തിലേറെ നാടിനെ വിറപ്പിച്ച കടുവ കൂട്ടിലായി",
      description: "description",
      location: "location",
      categoryModel: CategoryModel(id: 3, name: "local"),
      author: "author",
      dateTime: DateTime.now(),
    ),
    NewsModel(
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/0/09/Ochira_kala.jpg',
      title:
          "കുഞ്ഞിക്കാളകൾ മുതൽ കാളക്കൂറ്റൻമാർ വരെ പടനിലത്ത്, ഉയരത്തിൽ രാജാവ് വിശ്വപ്രജാപതി കാലഭൈരവൻ; ഓച്ചിറയിൽ വിസ്മയം തീർത്ത് 28-ാം ഓണാഘോഷം",
      description: "description",
      location: "location",
      categoryModel: CategoryModel(id: 3, name: "local"),
      author: "author",
      dateTime: DateTime.now(),
    ),
    NewsModel(
      imageUrl:
          'https://malayalam.samayam.com/thumb/103968405/parassala-sharon-murder-case-accused-greeshma-out-from-jail-103968405.jpg?imgsize=54738&width=700&height=525&resizemode=75',
      title:
          "ഒന്നും പറയാനില്ല'; ഷാരോണ്‍ വധക്കേസ് പ്രതി ഗ്രീഷ്മ ജയില്‍ മോചിതയായി, പ്രതികരണം ഇങ്ങനെ",
      description: "description",
      location: "location",
      categoryModel: CategoryModel(id: 3, name: "local"),
      author: "author",
      dateTime: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFAE7),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFAE7),
        title: Center(
          child: Image(
            image: AssetImage("assets/images/DeskLive.png"),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: IconButton(
              icon: Icon(Icons.refresh_outlined, size: 36),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPage()),
                );
              },
            ),
          ),
        ],
      ),
      body: Container(
        color: Color(0xffFFFAE7),
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    width: screenWidth(context),
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextField(
                      style: TextStyle(
                        color: Color(0xFF000000),
                        height: 1,
                      ),
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),

                          // contentPadding: const EdgeInsets.symmetric(
                          //     vertical: 50, horizontal: 50),
                          hintText: "Search",
                          fillColor: Color(0xffFFFFFF),
                          filled: true,
                          prefixIcon: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  "assets/icons/iconsearch.svg")),
                          // labelText: "Search",
                          border: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(color: Colors.white),
                            // OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(20.0),
                            // ),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  // padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      TextWidget(
                        text: 'Popular tags',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      const Spacer(),
                      SvgPicture.asset('assets/icons/populartags.svg')
                    ],
                  ),
                ),

                GridView.builder(
                  padding: EdgeInsets.only(left: 1, right: 1, top: 15),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 40,
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15,
                  ),
                  itemCount: showAllItems
                      ? trendingList.length + 1
                      : 8, // +1 for "View All"/"Show Less" button
                  itemBuilder: (BuildContext ctx, int index) {
                    bool isSelected = (isSelectetList.contains(index));

                    if (index == 7 && !showAllItems) {
                      // Show "View All" button
                      return Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: isSelected
                              ? Color(0xffFECC07)
                              : Color(0xffFFECA1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                showAllItems = true;
                              });
                            },
                            child: TextWidget(
                              text: "View All",
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      );
                    } else if (index == trendingList.length && showAllItems) {
                      // Show "Show Less" button
                      return Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: isSelected
                              ? Color(0xffFECC07)
                              : Color(0xffFFECA1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                showAllItems = false;
                              });
                            },
                            child: TextWidget(
                              text: "Show Less",
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      );
                    } else if (showAllItems || index < 7) {
                      // Show all items when showAllItems is true, or show the first 7 items
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isSelected) {
                              isSelectetList.remove(index);
                            } else {
                              isSelectetList.clear();
                              isSelectetList.add(index);
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: isSelected
                                ? Color(0xffFECC07)
                                : Color(0xffFFECA1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: TextWidget(
                              text: trendingList[index],
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      );
                    } else {
                      return SizedBox(); // Hide extra items when not showing all
                    }
                  },
                ),

                // if (!showAllTopics && trendingList.length > 8)
                //   GestureDetector(
                //     onTap: () {
                //       setState(() {
                //         showAllTopics = true;
                //       });
                //     },
                //     child: Container(
                //       decoration: BoxDecoration(
                //         shape: BoxShape.rectangle, color: Color(0xffFFECA1),
                //         // color: isSelected ? Color(0xffFECC07) : Color(0xffFFECA1),
                //         borderRadius: BorderRadius.circular(10),
                //       ),
                //       alignment: Alignment.center,
                //       margin: EdgeInsets.only(top: 10),
                //       child: Text(
                //         "View All",
                //         style: TextStyle(
                //           color: Colors
                //               .black, // You can customize the button style
                //           fontSize: 14,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ),
                //   ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                Container(
                  height: 200,
                  width: screenWidth(context, dividedBy: 1),
                  child: ListView(
                    scrollDirection: Axis
                        .horizontal, // Set the scroll direction to horizontal
                    children: <Widget>[
                      for (final newsItem in newsList)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 5),
                          child: NewsCard(
                            imagePath: newsItem.imageUrl,
                            title: newsItem.title, dateTime: newsItem.dateTime,
                            // You can pass other properties like description, location, etc. if needed
                          ),
                        ),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: newsList.length,
                  itemBuilder: (context, index) {
                    return buildCard(newsModel: newsList[index]);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard({required NewsModel newsModel}) {
    return Padding(
      padding: const EdgeInsets.only(left: 1.0, right: 9, bottom: 3, top: 5),
      child: Card(
        color: Color(0xffFFECA1),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  // width: 340,
                  margin: EdgeInsets.all(16),
                  child: CircleAvatar(
                    radius: 30,
                    // backgroundColor: Color(0xFF0000FF),
                    backgroundImage: NetworkImage(newsModel.imageUrl),
                  ),
                ),
                Flexible(
                  child: Text(
                    newsModel.title,
                    maxLines: 2,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final DateTime dateTime;

  NewsCard(
      {required this.imagePath, required this.title, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    final timeAgo = getTimeAgo(dateTime);
    return Container(
      height: 137,
      width: screenWidth(context, dividedBy: 1.5),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(.1),
                    Colors.black.withOpacity(1),
                  ],
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.5, bottom: 12.5),
                  child: Text(
                    title,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 3,
              left: 10.5,
              child: Text(
                timeAgo,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String getTimeAgo(DateTime dateTime) {
  final now = DateTime.now();
  final difference = now.difference(dateTime);

  if (difference.inSeconds < 60) {
    return '${difference.inSeconds} seconds ago';
  } else if (difference.inMinutes < 60) {
    return '${difference.inMinutes} minutes ago';
  } else if (difference.inHours < 24) {
    return '${difference.inHours} hours ago';
  } else {
    final dateFormatter = DateFormat('MMM dd, yyyy');
    return dateFormatter.format(dateTime);
  }
}

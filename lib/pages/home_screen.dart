import 'package:app_templet/model/news_model.dart';
import 'package:app_templet/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils.dart';

//

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body: Container(
        // padding: EdgeInsets.only(bottom: 20),
        // color: Colors.cyan,
        height: screenHeight(context, dividedBy: 1),
        width: screenWidth(context, dividedBy: 1),
        child: SingleChildScrollView(
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
              CategoryBuilder(newsModel: newsList)
              // CategoryBuilder(newsModel: newsList),
              // SizedBox(
              //   height: 100,
              // ),
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
        //
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
              padding: const EdgeInsets.only(left: 20.0, bottom: 8),
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

//categories block code by class

class CategoryBuilder extends StatefulWidget {
  final List<NewsModel> newsModel;

  const CategoryBuilder({super.key, required this.newsModel});
  @override
  _CategoryBuilderState createState() => _CategoryBuilderState();
}

class _CategoryBuilderState extends State<CategoryBuilder> {
  int selectedContainerIndex = 0;
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
    return Column(
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
                    color: isSelected ? Color(0xffFECC07) : Color(0xffFFECA1),
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
                newsList: widget.newsModel
                    .where((element) =>
                        element.categoryModel.id == selectedContainerIndex - 1)
                    .toList(),
                imageIndex: selectedContainerIndex,
                headline: 'News Headline for category $selectedContainerIndex',
              )
            : SizedBox(),
      ],
    );
  }
}

class CategoryDetails extends StatelessWidget {
  final int imageIndex;
  final String headline;
  final List<NewsModel> newsList;

  CategoryDetails({
    required this.imageIndex,
    required this.headline,
    required this.newsList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: newsList.length,
      itemBuilder: (context, index) {
        return buildCard(newsModel: newsList[index]);
      },
    );
  }

  Widget buildCard({required NewsModel newsModel}) {
    return Padding(
      padding: const EdgeInsets.only(left: 19.0, right: 19, bottom: 3, top: 5),
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

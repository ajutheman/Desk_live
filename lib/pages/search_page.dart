import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List isSelectetList = [];
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
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.all(15),
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
            padding: EdgeInsets.only(left: 15, right: 15),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 40,
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15),
            itemCount: 8,
            itemBuilder: (BuildContext ctx, int index) {
              bool isSelected = (isSelectetList.contains(index));
              return GestureDetector(
                onTap: () {
                  setState(() {
                    if (isSelected) {
                      isSelectetList.remove(index);
                    } else {
                      isSelectetList.add(index);
                    }
                  });
                },
                child: Container(
                  // height: 32,
                  // width: 79,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: isSelected ? Color(0xffFECC07) : Color(0xffFFECA1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: TextWidget(
                    text: '#trending',
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  )),
                ),
              );
            }),
      ]),
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

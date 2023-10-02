import 'package:app_templet/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../widget/text_widgect_home_page.dart';

class MainNews extends StatefulWidget {
  MainNews({super.key});

  @override
  State<MainNews> createState() => _MainNewsState();
}

class _MainNewsState extends State<MainNews> {
  bool isTapped = false;
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => setState(() {
              isTapped = !isTapped;
            }),
            child: Column(
              children: [
                // Container(
                //   height: 100,
                //   width: screenWidth(context),
                //   color: Colors.red,
                // ),
                Container(
                  height: screenHeight(context, dividedBy: 2),
                  width: screenWidth(context),
                  // color: Colors.red,
                  child: Stack(children: [
                    Positioned(
                      top: 0,
                      child: Container(
                        width: screenWidth(context),
                        height: screenHeight(context, dividedBy: 2.1),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn.britannica.com/87/186687-050-3AA9E551/Justin-Trudeau-2015.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 2,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            gradient: LinearGradient(
                                begin: Alignment.center,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black.withOpacity(.1),
                                  Colors.black.withOpacity(.5),
                                ]),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 100),
                                  child: TextWidget(
                                    text:
                                        'വിമാനത്തിന് തകരാർ, ജസ്റ്റിൻ ട്രൂഡോയും സംഘവും ഇന്ന് മടങ്ങില്ല, ഇന്ത്യയിൽ തുടരും',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    textcolor: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 250, bottom: 12),
                                  child: TextWidget(
                                    text: '5 minutes ago',
                                    textcolor: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 9,
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      bottom: 12,
                      // top: 416,
                      child: Container(
                        height: 21,
                        width: 71,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image(
                            image: AssetImage(
                              "assets/images/DeskLive.png",
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    isTapped
                        ? Positioned(
                            top: 0,
                            child: Container(
                              color: Colors.white,
                              height: 80,
                              width: screenWidth(context),
                              child: ListTile(
                                leading: IconButton(
                                  icon: const Icon(Icons.arrow_back, size: 27),
                                  onPressed: () {},
                                ),
                                title: const Center(
                                  child: Image(
                                    image: AssetImage(
                                      "assets/images/DeskLive.png",
                                    ),
                                  ),
                                ),
                                trailing: IconButton(
                                  icon: Icon(Icons.refresh_outlined, size: 32),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          )
                        : SizedBox(),
                  ]),
                ),
                Expanded(
                  child: Container(
                    height: screenHeight(context, dividedBy: 3),
                    width: screenWidth(context),
                    // color: Colors.blue,
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 30, top: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text:
                                'ന്യൂഡ‍ൽഹി: കാനഡയിൽ നടക്കുന്ന ഇന്ത്യാ വിരുദ്ധ നീക്കങ്ങളിൽ കനേഡിയൻ '
                                'പ്രധാനമന്ത്രി ജസ്റ്റിൻ ട്രൂഡോയോട് ആശങ്ക അറിയിച്ച് പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി. ജി 20 ഉച്ചകോടിക്കിടെ നടന്ന '
                                'യോഗത്തിലാണ് ഇരുവരും തമ്മിൽ കൂടിക്കാഴ്ച നടത്തിയത്.\n  പ്രധാനമന്ത്രി നരേന്ദ്രമോദി കനേഡിയൻ പ്രധാനമന്ത്രി '
                                'ജസ്റ്റിൻ ട്രൂഡോയുമായി ഭീകരവാദം ഉൾപ്പെടെയുളള വിവിധ വിഷയങ്ങൾ ചർച്ച ചെയ്‌തതായി പ്രധാനമന്ത്രിയുടെ '
                                'ഓഫീസ് തന്നെയാണ് മാധ്യമങ്ങളെ അറിയിച്ചത്. ഇന്ത്യയോടൊപ്പം ചേർന്ന് ഖലിസ്ഥാൻ ഭീകരവാദത്തിനെതിരായി'
                                ' പ്രവർത്തിക്കുമെന്നും ',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            textcolor: Colors.black,
                            linespace: 1.5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: TextWidget(
                              text: '11.09.2023 അനീഷ് ബാബു',
                              textcolor: Color(0xff141414),
                              fontWeight: FontWeight.w600,
                              fontSize: 9,
                            ),
                          ),
                          isTapped
                              ? Padding(
                                  padding: const EdgeInsets.only(top: 60),
                                  child: Container(
                                    height: 50,
                                    width: screenWidth(context),
                                    // color: Colors.red,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              print('object');
                                              setState(() {
                                                isLiked = !isLiked;
                                              });
                                            },
                                            icon: SvgPicture.asset(
                                              isLiked
                                                  ? 'assets/icons/icon_fav_black.svg'
                                                  : 'assets/icons/icon_fav_liked.svg',
                                            ),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: SvgPicture.asset(
                                                  'assets/icons/icon_coment_black.svg')),
                                          IconButton(
                                              onPressed: () {},
                                              icon: SvgPicture.asset(
                                                  'assets/icons/icon_share_black.svg')),
                                          IconButton(
                                              onPressed: () {},
                                              icon: SvgPicture.asset(
                                                  'assets/icons/icon_save_black.svg')),
                                        ]),
                                  ),
                                )
                              : SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

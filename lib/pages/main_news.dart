import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/text_widgect_home_page.dart';

class MainNews extends StatelessWidget {
  const MainNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Center(child: Image(image: AssetImage("assets/images/DeskLive.png"))
                // Text(
                //   "DeskLive",
                //   style: TextStyle(fontSize: 22),
                // ),
                ),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh_outlined, size: 36),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://cdn.britannica.com/87/186687-050-3AA9E551/Justin-Trudeau-2015.jpg'),
                      fit: BoxFit.cover)),
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
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 100),
                    child: TextWidget(
                      text:
                          'വിമാനത്തിന് തകരാർ, ജസ്റ്റിൻ ട്രൂഡോയും സംഘവും ഇന്ന് മടങ്ങില്ല, ഇന്ത്യയിൽ തുടരും',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      textcolor: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 250, bottom: 12),
                    child: TextWidget(
                      text: '5 minutes ago',
                      textcolor: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 9,
                    ),
                  )
                ]),
              ),
            )
          ]),
          Positioned(
              left: 30,
              top: 418,
              child: Container(
                height: 21,
                width: 71,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFECC07)),
              )),
          Positioned(
            bottom: 180,
            child: Container(
              padding: EdgeInsets.only(
                left: 20,
                right: 30,
              ),
              width: MediaQuery.of(context).size.width,
              child: TextWidget(
                text:
                    'ന്യൂഡ‍ൽഹി: കാനഡയിൽ നടക്കുന്ന ഇന്ത്യാ വിരുദ്ധ നീക്കങ്ങളിൽ കനേഡിയൻ '
                    'പ്രധാനമന്ത്രി ജസ്റ്റിൻ ട്രൂഡോയോട് ആശങ്ക അറിയിച്ച് പ്രധാനമന്ത്രി നരേന്ദ്ര മോദി. ജി 20 ഉച്ചകോടിക്കിടെ നടന്ന '
                    'യോഗത്തിലാണ് ഇരുവരും തമ്മിൽ കൂടിക്കാഴ്ച നടത്തിയത്.\n  പ്രധാനമന്ത്രി നരേന്ദ്രമോദി കനേഡിയൻ പ്രധാനമന്ത്രി '
                    'ജസ്റ്റിൻ ട്രൂഡോയുമായി ഭീകരവാദം ഉൾപ്പെടെയുളള വിവിധ വിഷയങ്ങൾ ചർച്ച ചെയ്‌തതായി പ്രധാനമന്ത്രിയുടെ '
                    'ഓഫീസ് തന്നെയാണ് മാധ്യമങ്ങളെ അറിയിച്ചത്. ഇന്ത്യയോടൊപ്പം ചേർന്ന് ഖലിസ്ഥാൻ ഭീകരവാദത്തിനെതിരായി'
                    ' പ്രവർത്തിക്കുമെന്നും ',
                fontSize: 13,
                fontWeight: FontWeight.w700,
                textcolor: Colors.black,
                linespace: 1.5,
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            left: 20,
            child: TextWidget(
              text: '11.09.2023 അനീഷ് ബാബു',
              textcolor: Color(0xff141414),
              fontWeight: FontWeight.w600,
              fontSize: 9,
            ),
          )
        ],
      ),
    );
  }
}

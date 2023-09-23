import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/text_widgect_home_page.dart';

class FeederPage extends StatefulWidget {
  const FeederPage({super.key});

  @override
  State<FeederPage> createState() => _FeederPageState();
}

class _FeederPageState extends State<FeederPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1522359767-31c3980dde91?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHJhaW4lMjB1bWJyZWxsYXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                  ),
                  fit: BoxFit.fill),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.black,
                ],
              )),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              gradient: LinearGradient(begin: Alignment.bottomCenter, stops: [
                0.8,
                0.8
              ], colors: [
                Colors.black.withOpacity(.45),
                Colors.black.withOpacity(.45),
              ]),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 50),
              child: Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: TextWidget(
                            text:
                                'കേരളത്തിൽ 2 ജില്ലകളിൽ യെല്ലോ അലർട്ട് പ്രഖ്യാപിച്ചു...',
                            fontSize: 33,
                            linespace: 1,
                            textcolor: Color(0xffFECC07),
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: TextWidget(
                          text:
                              'സംസ്ഥാനത്ത് ഒരു ഇടവേളയ്ക്ക് ശേഷം വീണ്ടും മഴ ശക്തമാകുന്നു. ഇന്ന് ഒൻപത് ജില്ലകളിലാണ് മഴമുന്നറിയിപ്പ് പ്രഖ്യാപിച്ചിരിക്കുന്നത്. അടുത്ത അഞ്ചു ദിവസം വ്യാപകമായ മഴക്കും ഒറ്റപ്പെട്ട സ്ഥലങ്ങളിൽ ശക്തമായ മഴക്കും (Heavy Rainfall) സാധ്യതയെന്ന് കേന്ദ്ര കാലാവസ്ഥ വകുപ്പ്',
                          fontSize: 13,
                          textcolor: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        height: 31,
                        width: 304,
                        color: Colors.black,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icon_favourite.svg', // Path to your SVG file
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
            ),
          )),
    );
  }
}

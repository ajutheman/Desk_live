import 'package:flutter/material.dart';

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
        child: Column(children: [
          TextWidget(
            text: 'കേരളത്തിൽ 2 ജില്ലകളിൽ യെല്ലോ അലർട്ട് പ്രഖ്യാപിച്ചു...',
            fontSize: 33,
            textcolor: Color(0xffFECC07),
          )
        ]),
      ),
    );
  }
}

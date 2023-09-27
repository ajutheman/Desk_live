import 'package:app_templet/pages/feeder_page.dart';
import 'package:app_templet/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _NavigateToHome();
  }

  _NavigateToHome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => FeederPage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: screenHeight(context),
        width: screenWidth(context),
        decoration: BoxDecoration(
          color: Color(0xffFECC07),
          image: DecorationImage(
            image: AssetImage('assets/images/logosplash.png'),
          ),
        ),
        // child: SvgPicture.asset('assets/icons/logosvg.svg'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FeederPage extends StatefulWidget {
  const FeederPage({super.key});

  @override
  State<FeederPage> createState() => _FeederPageState();
}

class _FeederPageState extends State<FeederPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1522359767-31c3980dde91?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHJhaW4lMjB1bWJyZWxsYXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                  ),
                  fit: BoxFit.fill)),
          child: Column(children: [
            // TextNews(),
            Text(
                'സംസ്ഥാനത്ത് ഒരു ഇടവേളയ്ക്ക് ശേഷം വീണ്ടും മഴ ശക്തമാകുന്നു. ഇന്ന് ഒൻപത് ജില്ലകളിലാണ് മഴമുന്നറിയിപ്പ് പ്രഖ്യാപിച്ചിരിക്കുന്നത്. അടുത്ത അഞ്ചു ദിവസം വ്യാപകമായ മഴക്കും ഒറ്റപ്പെട്ട സ്ഥലങ്ങളിൽ ശക്തമായ മഴക്കും (Heavy Rainfall) സാധ്യതയെന്ന് കേന്ദ്ര കാലാവസ്ഥ വകുപ്പ്.'),
          ]),
        )
      ]),
    );
  }
}

class TextNews extends StatelessWidget {
  final String newsHead;
  final Color textColor;
  const TextNews({
    super.key,
    required this.newsHead,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(newsHead);
  }
}

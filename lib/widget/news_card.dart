// import 'package:flutter/material.dart';
//
// class NewsCard extends StatelessWidget {
//   final String imagePath;
//   final String title;
//
//   NewsCard({required this.imagePath, required this.title});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Container(
//         height: 246,
//         width: 334,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(
//             Radius.circular(20.0),
//           ),
//         ),
//         child: Stack(
//           children: [
//             // Background asset image
//             Image.asset(
//               imagePath, // Use the provided imagePath
//               width: 334,
//               height: 246,
//               fit: BoxFit.cover,
//             ),
//
//             // Gradient overlay
//             Container(
//               width: 334,
//               height: 246,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                   colors: [
//                     Colors.transparent, // Start with transparent color
//                     Colors.black.withOpacity(0.5), // Adjust opacity as needed
//                   ],
//                 ),
//               ),
//             ),
//
//             // Text on top of the image
//             Positioned(
//               bottom: 20, // Adjust the positioning as needed
//               left: 20,
//               right: 20,
//               child: Text(
//                 title, // Use the provided title
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24, // Adjust the font size as needed
//                   fontWeight: FontWeight.bold,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:app_templet/utils.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String imagePath;
  final String title;

  NewsCard({required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Container(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            title, // Use the provided title
            style: TextStyle(
              color: Colors.white,
              fontSize: 14, // Adjust the font size as needed
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        height: screenHeight(context, dividedBy: 3.5),
        width: screenWidth(context, dividedBy: 1.1),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                imagePath,
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.stretch,
        //   children: [
        //     // Background asset image
        //     Image.asset(
        //       imagePath, // Use the provided imagePath
        //       height: 100, // Adjust the height as needed
        //       fit: BoxFit.cover,
        //     ),
        //
        //     // Gradient overlay
        //     // Container(
        //     //   height: 20, // Adjust the height as needed
        //     //   decoration: BoxDecoration(
        //     //     gradient: LinearGradient(
        //     //       begin: Alignment.topCenter,
        //     //       end: Alignment.bottomCenter,
        //     //       colors: [
        //     //         Colors.transparent, // Start with transparent color
        //     //         Colors.black.withOpacity(0.5), // Adjust opacity as needed
        //     //       ],
        //     //     ),
        //     //   ),
        //     // ),
        //
        //     // Text on top of the image
        //     // Expanded(
        //     //   child: Center(
        //     //     child: Padding(
        //     //       padding: const EdgeInsets.all(16.0),
        //           child: Text(
        //             title, // Use the provided title
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 24, // Adjust the font size as needed
        //               fontWeight: FontWeight.bold,
        //             ),
        //             textAlign: TextAlign.center,
        //           ),
        //     //     ),
        //     //   ),
        //     // ),
        //   ],
        // ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

import 'flutter_alarm/pages/home_page.dart';
import 'flutter_shopping/screen/page/ProductPageScreen.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shopping',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         scaffoldBackgroundColor: Colors.white,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: ProductPageScreen(),
//     );
//   }
// }


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter UI',
        theme: ThemeData(
            primaryColor: Colors.white,
            brightness: Brightness.dark
        ),
        home: HomePage(),
        // home: Page1(),
      ),
    );
  }


}
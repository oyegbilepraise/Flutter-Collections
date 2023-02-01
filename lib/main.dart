import 'package:flutter/material.dart';
import 'package:online_shop/Daily%20Exercise/constants.dart';
import 'package:online_shop/Daily%20Exercise/screens/meditation_home_screen.dart';
import 'package:online_shop/Online%20Shop/screens/home/home_screen.dart';
// import 'package:online_shop/Online%20Shop/screens/home/home_screen.dart';
// import 'package:online_shop/Online%20Shop/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Meditation App',
        theme: ThemeData(
          // fontFamily: GoogleFonts.cairo(),
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: kTextColor),
        ),
        home: const MeditationHomeScreen()
        // home: const HomeScreen(),
        // debugShowCheckedModeBanner: false,
        // title: 'Flutter Demo',
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        //   visualDensity: VisualDensity.adaptivePlatformDensity,
        //   textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor)
        // ),
        // home: const HomeScreen(),
        );
  }
}


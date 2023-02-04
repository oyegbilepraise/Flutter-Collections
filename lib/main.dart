import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:online_shop/Daily%20Exercise/constants.dart';
// import 'package:online_shop/Daily%20Exercise/screens/meditation_home_screen.dart';
import 'package:online_shop/Fintech/homepage.dart';
import 'package:online_shop/Music%20App/home_screen.dart';
import 'package:online_shop/Music%20App/play_list_screen.dart';
import 'package:online_shop/Music%20App/song_screen.dart';
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
    return GetMaterialApp(
      // title: 'Meditation App',
      title: 'Music App',
      theme: ThemeData(
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: Colors.white, displayColor: Colors.white)
          // fontFamily: GoogleFonts.cairo(),
          // scaffoldBackgroundColor: kBackgroundColor,
          // textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
          ),
      home: const SongScreen(),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/song', page: () => const SongScreen()),
        GetPage(name: '/playlist', page: () => const PlayListScreen()),
      ],
      // home: FintechHomePage(),
      // home: const MeditationHomeScreen()
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

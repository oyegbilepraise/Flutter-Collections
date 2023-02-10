import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shop/Music%20App/home_screen.dart';
import 'package:online_shop/Music%20App/play_list_screen.dart';
import 'package:online_shop/Music%20App/song_screen.dart';
import 'package:online_shop/Wallet%20App/home_page.dart';

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
      // home: HomeScreen()
      debugShowCheckedModeBanner: false,
      title: 'Music App',
      // theme: ThemeData(
      //     textTheme: Theme.of(context)
      //         .textTheme
      //         .apply(bodyColor: Colors.white, displayColor: Colors.white)
          // fontFamily: GoogleFonts.cairo(),
          // scaffoldBackgroundColor: kBackgroundColor,
          // textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
          // ),
      home: const HomePage(),
      // getPages: [
      //   GetPage(name: '/', page: () => const HomeScreen()),
      //   GetPage(name: '/song', page: () => const SongScreen()),
      //   GetPage(name: '/playlist', page: () => const PlayListScreen()),
      // ],

      // home: FintechHomePage(),
      // home: const MeditationHomeScreen()
      // home: HomeScreen()
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

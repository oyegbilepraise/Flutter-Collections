import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:online_shop/Coffe%20UI/coffee_home_page.dart';
import 'package:online_shop/News%20App/news_home_page.dart';
import 'package:online_shop/News%20App/screens/article_screen.dart';
import 'package:online_shop/News%20App/screens/discover_screen.dart';
import 'package:online_shop/Todo%20App/screens/todo_app_homepage.dart';
// import 'package:online_shop/Inspiration%20App/inspiration_home_page.dart';
// import 'package:online_shop/Music%20App/home_screen.dart';
// import 'package:online_shop/Music%20App/play_list_screen.dart';
// import 'package:online_shop/Music%20App/song_screen.dart';
// import 'package:online_shop/Wallet%20App/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      // home: NewsHomePage(),
      // home: const InspirationHomePage(),
      theme: ThemeData(
        // brightness: Brightness.dark,
        primarySwatch: Colors.grey,
        fontFamily: GoogleFonts.dmSans().fontFamily,
      ),
      initialRoute: '/',
      routes: {
        NewsHomePage.routeName : (context) => const NewsHomePage(),
        DiscoverScreen.routeName : (context) => const DiscoverScreen(),
        ArticleScreen.routeName : (context) => const ArticleScreen()
      },
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

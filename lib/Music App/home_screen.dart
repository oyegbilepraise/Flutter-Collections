import 'package:flutter/material.dart';
import 'package:online_shop/Music%20App/models/playlist_model.dart';
import 'package:online_shop/Music%20App/models/song_model.dart';
import 'package:online_shop/Music%20App/widgets/custom_app_bar.dart';
import 'package:online_shop/Music%20App/widgets/custom_nav_bar.dart';
import 'package:online_shop/Music%20App/widgets/discover_music.dart';
import 'package:online_shop/Music%20App/widgets/playlist_music.dart';
import 'package:online_shop/Music%20App/widgets/trending_music.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;
    List<Playlist> playlists = Playlist.playlist;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade200.withOpacity(0.8)
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const CustomAppBar(),
        bottomNavigationBar: const CustomNavBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const DiscoverMusic(),
              TrendingMusic(songs: songs),
              PlaylistMusic(playlists: playlists)
            ],
          ),
        ),
      ),
    );
  }
}
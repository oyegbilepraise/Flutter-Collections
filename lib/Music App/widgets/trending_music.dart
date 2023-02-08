import 'package:flutter/material.dart';
import 'package:online_shop/Music%20App/models/song_model.dart';
import 'package:online_shop/Music%20App/widgets/section_header.dart';
import 'package:online_shop/Music%20App/widgets/song_card.dart';

class TrendingMusic extends StatelessWidget {
  const TrendingMusic({
    Key? key,
    required this.songs,
  }) : super(key: key);

  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
      child: Column(
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: SectionHeader(
                  title: 'Trending Music',
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.27,
                child: ListView.builder(
                  itemCount: songs.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SongCard(song: songs[index]),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

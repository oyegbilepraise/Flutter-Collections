import 'package:flutter/material.dart';
import 'package:online_shop/Music%20App/models/playlist_model.dart';
import 'package:online_shop/Music%20App/widgets/playlist_card.dart';
import 'package:online_shop/Music%20App/widgets/section_header.dart';

class PlaylistMusic extends StatelessWidget {
  const PlaylistMusic({
    Key? key,
    required this.playlists,
  }) : super(key: key);

  final List<Playlist> playlists;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SectionHeader(title: 'Playlists'),
          ListView.builder(
            itemCount: playlists.length,
            padding: const EdgeInsets.only(top: 20),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>
                PlaylistCard(playlists: playlists[index]),
          )
        ],
      ),
    );
  }
}

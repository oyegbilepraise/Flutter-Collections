class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;
  final String lorem;

  Song(
      {required this.title,
      required this.description,
      required this.url,
      required this.coverUrl,
      required this.lorem});

  static List<Song> songs = [
    Song(
      title: 'Illusions',
      description: 'Illusions',
      url: 'assets/music/illusions.mp3',
      coverUrl: 'assets/images/illusions.png',
      lorem:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum necessitatibus fugit consequuntur quo? Eligendi culpa ad, fuga, expedita sint pariatur earum inventore, nisi perferendis eaque reprehenderit velit exercitationem distinctio ea. Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum necessitatibus fugit consequuntur quo? Eligendi culpa ad, fuga, expedita sint pariatur earum inventore, nisi perferendis eaque reprehenderit velit exercitationem distinctio ea.',
    ),
    Song(
      title: 'Pray',
      description: 'Pray',
      url: 'assets/music/pray.mp3',
      coverUrl: 'assets/images/pray.png',
      lorem:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum necessitatibus fugit consequuntur quo? Eligendi culpa ad, fuga, expedita sint pariatur earum inventore, nisi perferendis eaque reprehenderit velit exercitationem distinctio ea.',
    ),
    Song(
      title: 'Glass',
      description: 'Glass',
      url: 'assets/music/glass.mp3',
      coverUrl: 'assets/images/glass.png',
      lorem:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum necessitatibus fugit consequuntur quo? Eligendi culpa ad, fuga, expedita sint pariatur earum inventore, nisi perferendis eaque reprehenderit velit exercitationem distinctio ea.',
    )
  ];
}

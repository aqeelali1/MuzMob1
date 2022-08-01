// ignore_for_file: public_member_api_docs, sort_constructors_first
class onbordinginfo {
  String image, title, subtitle;
  onbordinginfo({
    required this.subtitle,
    required this.title,
    required this.image,
  });
}

final onboardinglest = [
  onbordinginfo(
      image: 'assets/images/m1.png',
      title: 'With MuzMob',
      subtitle:
          'Play podcasts and music for free on your mobile and tablet . Download albums, playlists, or just that one song and listen to music offline, wherever you are.'),
  onbordinginfo(
      image: 'assets/images/m2.png',
      title: 'crate playlists for your favorite songs',
      subtitle:
          'Muzmob makes streaming music easy with curated playlists and thousands of podcasts you can’t find anywhere else. Find music from new artists, stream your favorite album or playlist and listen to music you love for free'),
  onbordinginfo(
      image: 'assets/images/m3.png',
      title: 'Find and connect with your music community',
      subtitle:
          'Share tracks, reach a global audience, and connect with your favorite artists and fans directly on MuzMob'),
];

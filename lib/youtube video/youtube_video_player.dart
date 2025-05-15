import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoPlayer extends StatefulWidget {
  const YoutubeVideoPlayer({super.key});

  @override
  State<YoutubeVideoPlayer> createState() => _YoutubeVideoPlayerState();
}

class _YoutubeVideoPlayerState extends State<YoutubeVideoPlayer> {
  late YoutubePlayerController videoController;

  String videoId = YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=Qvd-I7lTecI") ??
      "Qvd-I7lTecI";

  @override
  void initState() {
    super.initState();
    videoController = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          loop: true,
        ));
  }
 
  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: videoController,
        progressIndicatorColor: Colors.blue,
        showVideoProgressIndicator: true,
      ),
      builder: (context, player) {
        return Scaffold(
            appBar: AppBar(
              /// --- appbar ---- ///
              title: const Text(
                "Youtube Video Player",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              centerTitle: true,
              backgroundColor: Colors.red,
            ),
            body: Column(
              children: [
                player,
              ],
            ));
      },
    );
  }
}

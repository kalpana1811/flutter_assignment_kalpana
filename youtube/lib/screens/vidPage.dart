import 'package:flutter/material.dart';
import 'package:youtube_app/services/ytModel.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class PlayerPage extends StatefulWidget {
  late List<VidModel> playList;
  late int currInd;

  PlayerPage({required this.playList, required this.currInd, super.key});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    // String videoID = "I9zDTSAoYC8";
    // String videoID = "jV7qK1kfD70";
    _controller = YoutubePlayerController(
      initialVideoId: widget.playList[widget.currInd].id,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        // mute: true,
      ),
    );

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: Column(
            children: [
              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                onReady: () {
                  print("Video loaded...");
                },
                bottomActions: [
                  CurrentPosition(),
                  ProgressBar(
                    isExpanded: true,
                    colors: ProgressBarColors(
                      playedColor: Colors.amber,
                      handleColor: Colors.amber[100],
                      backgroundColor: Colors.amber[50],
                    ),
                  ),
                  RemainingDuration(),
                  PlaybackSpeedButton(),
                  FullScreenButton(),
                  // PlayPauseButton(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

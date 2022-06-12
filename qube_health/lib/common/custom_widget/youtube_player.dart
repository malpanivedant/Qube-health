import 'package:flutter/material.dart';
import 'package:qube_health/common/util/app_theme.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubePlayerWidget extends StatelessWidget {
  final String? url;
  const YouTubePlayerWidget({Key? key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        height: 200,
        child: url != null && url!.isNotEmpty
            ? _getYouTubeBuilder(YoutubePlayer(
                controller: YoutubePlayerController(
                  initialVideoId: getVideoId(url!) ?? '',
                  flags: const YoutubePlayerFlags(
                    hideControls: false,
                    controlsVisibleAtStart: true,
                    autoPlay: false,
                    mute: false,
                  ),
                ),
                actionsPadding: const EdgeInsets.all(20),
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.green,
              ))
            : const Center(
                child: Text(
                  "Selected Video To be displayed here",
                  style: AppTheme.kHeading,
                ),
              ),
      ),
    );
  }

  Widget _getYouTubeBuilder(YoutubePlayer player) {
    return YoutubePlayerBuilder(
        player: player,
        builder: (context, player) {
          return Container(
              decoration: BoxDecoration(
                boxShadow: AppTheme().getBoxShadow(),
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFF1F2F3),
              ),
              child: getVideoId(url!) != null
                  ? player
                  : const Icon(
                      Icons.error_outline_sharp,
                      color: Colors.black,
                    ));
        });
  }

  String? getVideoId(String url) {
    try {
      String? videoID = YoutubePlayer.convertUrlToId(url);
      return videoID;
    } on Exception catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}

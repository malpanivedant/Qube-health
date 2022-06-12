import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:qube_health/common/util/app_theme.dart';
import 'package:qube_health/common/util/consts.dart';
import 'package:qube_health/feeling_history/models/feeling_view_model.dart';

class VideoPlayList extends StatelessWidget {
  final List<VideoPlayListViewModel> videoPlayList;
  final Function(String) onPressed;

  const VideoPlayList({
    Key? key,
    required this.videoPlayList,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child:
              Text("You May Find This Interesting", style: AppTheme.kHeading),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit euismod risus elementum magna scelerisque nunc sed varius. Tellus quis tristique adipiscing sed metus, sit ac adipiscing. Leo aenean sed eu purus maecenas posuere ",
            style: AppTheme.kBody.copyWith(
              fontSize: 14,
              color: Colors.black.withOpacity(0.4),
            ),
          ),
        ),
        const SizedBox(height: 10),
        // _getCard(0),
        SizedBox(
          height: 130,
          child: ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: videoPlayList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _getCard(index);
            },
            separatorBuilder: (context, index) => const SizedBox(
              width: 20,
            ),
          ),
        )
      ],
    );
  }

  Widget _getCard(int index) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        onPressed(videoPlayList[index].url);
      },
      child: Ink(
        height: 128,
        width: 208,
        decoration: BoxDecoration(
          boxShadow: AppTheme().getBoxShadow(),
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFF1F2F3),
        ),
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: videoPlayList[index].imageThumbnail,
              height: 128,
              width: 208,
              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  Container(color: Colors.transparent),
              errorWidget: (context, url, error) =>
                  Container(color: Colors.transparent),
            ),
            Center(
              child: Image.asset(kYouTube),
            )
          ],
        ),
      ),
    );
  }
}

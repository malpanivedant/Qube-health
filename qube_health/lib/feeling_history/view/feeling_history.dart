import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qube_health/common/custom_widget/youtube_player.dart';
import 'package:qube_health/common/util/app_theme.dart';
import 'package:qube_health/feeling_history/controller/video_controller.dart';
import 'package:qube_health/feeling_history/models/feeling_view_model.dart';
import 'package:qube_health/feeling_history/view/widgets/calender_week.dart';
import 'package:qube_health/feeling_history/view/widgets/feeling_percent_history.dart';
import 'package:qube_health/feeling_history/view/widgets/feeling_time.dart';
import 'package:qube_health/feeling_history/view/widgets/video_playList.dart';

class FeelingHistory extends StatefulWidget {
  const FeelingHistory({Key? key}) : super(key: key);

  @override
  State<FeelingHistory> createState() => _FeelingHistoryState();
}

class _FeelingHistoryState extends State<FeelingHistory> {
  final VideoController controller = Get.put(VideoController());
  String? videoUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
            size: 18,
          ),
        ),
        elevation: 0.0,
        title: Text(
          "Your Feelings History",
          style: AppTheme.kHeading.copyWith(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: _getScreenData(),
    );
  }

  Widget _getScreenData() {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const FeelingPercentHistoryWidget(
          energericPercent: "30",
          sadPercent: "10",
          happyPercent: "40",
          angryPercent: "1",
        ),
        Divider(color: Colors.black.withOpacity(0.1), thickness: 1),
        const CalenderWeekWidget(date: "10 June, 2021"),
        Divider(color: Colors.black.withOpacity(0.1), thickness: 1),
        FeelingTimeWidget(feelingTimeList: getFeelingTimeList),
        Divider(color: Colors.black.withOpacity(0.1), thickness: 1),
        VideoPlayList(
            videoPlayList: getVideoPlayList,
            onPressed: (url) {
              controller.updateUrl(url);
            }),
        const SizedBox(height: 20),
        Obx(
          () => Padding(
            padding: const EdgeInsets.all(8.0),
            child: YouTubePlayerWidget(url: controller.videoUrl.value),
          ),
        )
      ],
    );
  }
}

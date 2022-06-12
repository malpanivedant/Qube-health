import 'package:qube_health/common/util/consts.dart';

class WeekCalenderModel {
  String label;
  String date;
  bool isSelected;

  WeekCalenderModel({
    required this.date,
    required this.label,
    this.isSelected = false,
  });
}

class FeelingTimeViewModel {
  final String time;
  final String iconUrl;
  final String label;
  FeelingTimeViewModel({
    required this.iconUrl,
    required this.label,
    required this.time,
  });
}

class VideoPlayListViewModel {
  final String url;
  final String imageThumbnail;
  VideoPlayListViewModel({required this.imageThumbnail, required this.url});
}

List<WeekCalenderModel> getWeekList = [
  WeekCalenderModel(date: "10", label: "Mo", isSelected: true),
  WeekCalenderModel(date: "11", label: "Tu"),
  WeekCalenderModel(date: "12", label: "We"),
  WeekCalenderModel(date: "13", label: "Th"),
  WeekCalenderModel(date: "14", label: "Fr"),
  WeekCalenderModel(date: "15", label: "Sa"),
  WeekCalenderModel(date: "16", label: "Su"),
];

List<FeelingTimeViewModel> getFeelingTimeList = [
  FeelingTimeViewModel(time: "9AM - 12PM", iconUrl: kLove, label: "Love"),
  FeelingTimeViewModel(time: " 1PM - 4PM", iconUrl: kAngry, label: "Angry"),
  FeelingTimeViewModel(time: " 4AM - 6PM", iconUrl: kAngry, label: "Angry"),
];

List<VideoPlayListViewModel> getVideoPlayList = [
  VideoPlayListViewModel(
      url: "https://youtu.be/zP8U1x0K1-M",
      imageThumbnail:
          "https://www.devmcgill.com/en/wp-content/uploads/2019/01/Get-Fit-And-Healthy-In-2019-Montreal-s-Best-Fitness-Hotspots.jpg"),
  VideoPlayListViewModel(
      url: " https://youtu.be/dJlFmxiL11s",
      imageThumbnail: "https://i.ytimg.com/vi/DyTymdT2HnI/maxresdefault.jpg"),
  VideoPlayListViewModel(
      url: "https://youtu.be/uUKAYkQZXko", imageThumbnail: "kAngry"),
];

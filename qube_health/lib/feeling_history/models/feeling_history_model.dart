class FeelingHistoryModel {
  FeelingHistoryModel({
    this.status,
    this.data,
  });

  final String? status;
  final Data? data;

  factory FeelingHistoryModel.fromMap(Map<String, dynamic> json) =>
      FeelingHistoryModel(
        status: json["status"],
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
      );
}

class Data {
  Data({
    this.feelingPercentage,
    this.feelingList,
    this.videoArr,
  });

  final FeelingPercentage? feelingPercentage;
  final List<FeelingList>? feelingList;
  final List<VideoArr>? videoArr;

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        feelingPercentage: json["feeling_percentage"] == null
            ? null
            : FeelingPercentage.fromMap(json["feeling_percentage"]),
        feelingList: json["feeling_list"] == null
            ? null
            : List<FeelingList>.from(
                json["feeling_list"].map((x) => FeelingList.fromMap(x))),
        videoArr: json["video_arr"] == null
            ? null
            : List<VideoArr>.from(
                json["video_arr"].map((x) => VideoArr.fromMap(x))),
      );
}

class FeelingList {
  FeelingList({
    this.userFeelingId,
    this.feelingId,
    this.feelingName,
    this.submitTime,
  });

  final String? userFeelingId;
  final String? feelingId;
  final String? feelingName;
  final DateTime? submitTime;

  factory FeelingList.fromMap(Map<String, dynamic> json) => FeelingList(
        userFeelingId: json["user_feeling_id"],
        feelingId: json["feeling_id"],
        feelingName: json["feeling_name"],
        submitTime: json["submit_time"] == null
            ? null
            : DateTime.parse(json["submit_time"]),
      );
}

class FeelingPercentage {
  FeelingPercentage({
    this.happy,
    this.sad,
    this.energetic,
    this.calm,
    this.angry,
    this.bored,
  });

  final String? happy;
  final String? sad;
  final String? energetic;
  final String? calm;
  final String? angry;
  final String? bored;

  factory FeelingPercentage.fromMap(Map<String, dynamic> json) =>
      FeelingPercentage(
        happy: json["Happy"],
        sad: json["Sad"],
        energetic: json["Energetic"],
        calm: json["Calm"],
        angry: json["Angry"],
        bored: json["Bored"],
      );
}

class VideoArr {
  VideoArr({
    this.title,
    this.description,
    this.youtubeUrl,
  });

  final String? title;
  final String? description;
  final String? youtubeUrl;

  factory VideoArr.fromMap(Map<String, dynamic> json) => VideoArr(
        title: json["title"],
        description: json["description"],
        youtubeUrl: json["youtube_url"],
      );
}

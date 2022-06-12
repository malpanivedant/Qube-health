import 'dart:convert';

import 'package:http/http.dart';
import 'package:qube_health/feeling_history/models/feeling_history_model.dart';

const String getUrl =
    "https://www.qubehealth.com/qube_services/api/testservice/getListOfUserFeeling";

class FeelingHistoryHttpServiceApi {
  Future<FeelingHistoryModel?> getData() async {
    Uri uri = Uri.parse(getUrl);
    var res = await post(uri, headers: header, body: query);

    if (res.statusCode == 200) {
      // var body = jsonDecode(res.body);

      //TODO: remove when we get correct api response
      var body = jsonDecode(_responseMock);

      FeelingHistoryModel detailsPageModel = FeelingHistoryModel.fromMap(body);

      return detailsPageModel;
    } else {
      return null;
    }
  }
}

String _responseMock = '''{
	"status": "200",
	"data": {
		"feeling_percentage": {
			"Happy": "3",
			"Sad": "1",
			"Energetic": "3",
			"Calm": "2",
			"Angry": "0",
			"Bored": "1"
		},
		"feeling_list": [{
				"user_feeling_id": "3",
				"feeling_id": "1",
				"feeling_name": "Calm",
				"submit_time": "2021-07-31 13:17:30"
			},
			{
				"user_feeling_id": "5",
				"feeling_id": "6",
				"feeling_name": "Bored",
				"submit_time": "2021-07-31 17:27:15"
			},
			{
				"user_feeling_id": "6",
				"feeling_id": "4",
				"feeling_name": "Happy",
				"submit_time": "2021-07-31 23:08:53"
			}
		],
		"video_arr": [{
			"title": "Related to Health",
			"description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
			"youtube_url": "https://www.youtube.com/watch?v=ml6cT4AZdqI"
		}]
	}
}
''';
Map<String, String> header = {
  "X-Api-Key": "f6d646a6c2f2df883ea0cccaa4097358ede98284"
};
Map<String, dynamic> query = {
  "user_id": "3206161992",
  "feeling_date": "15-04-2022",
};

class HowToFeedModel {
  String? title;
  String? body;

  HowToFeedModel({this.title, this.body});

  HowToFeedModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    body = json['body'];
  }

}
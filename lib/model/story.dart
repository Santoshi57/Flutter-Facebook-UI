class Story {
  Story({
    required this.name,
    required this.story,
  });
  late final String name;
  late final String story;

  Story.fromJson(Map<String, dynamic> json){
    name = json['name'];
    story = json['story'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['story'] = story;
    return _data;
  }
}
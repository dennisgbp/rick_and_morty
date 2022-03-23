class CharacterOriginModel {
  String? name;
  String? url;

  CharacterOriginModel({
    this.name,
    this.url,
  });

  factory CharacterOriginModel.fromJson(Map<String, dynamic> json){
    return CharacterOriginModel(
      name: json["name"],
      url: json["url"],
    );
  }
}
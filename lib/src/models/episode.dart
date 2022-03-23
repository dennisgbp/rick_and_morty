class EpisodeModel {
  int? id;
  String? name;

  EpisodeModel({
    this.id,
    this.name,
  });

  factory EpisodeModel.fromJson(Map<String, dynamic> json){
    return EpisodeModel(
      id: json["id"],
      name: json["name"],
    );
  }
}

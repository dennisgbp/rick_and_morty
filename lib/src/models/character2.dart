import 'episode.dart';

import 'location.dart';

class Character2Model {


  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? image;
  String? location;
  List<String>? episode;
  EpisodeModel? episodeModel;


  Character2Model({
    this.id,
    this.name,
    this.status,
    this.species,
    this.image,
    this.type,
    this.location,
    this.episode,
    this.episodeModel,
  });

  factory Character2Model.fromJson(Map<String, dynamic> json){
    return Character2Model(
      id: json["id"],
      name: json["name"],
      status: json["status"],
      species: json["species"],
      image: json["image"],
      type: json["type"],
      location: LocationModel.fromJson(json["location"]).name.toString(),
      episode:(json["episode"] as List).map((e) => e as String).toList(),
    );
  }

  @override
  String toString() {
    return "id: ${ this.id}" "name ${this.name}" "status: ${this.status}" "species: ${this.status}" "image: ${this.image}" "type: ${this.type}" "location: ${this.location}" "episode: ${this.episode}";
  }
}


/*
 httpCharacter() async {
   final res  =  await _get("http://");
   return (res.data["results"] as List).map((e) => Character2Model.fromJson(res.data["results"])).toList() ;
}

_get(String path) {

}*/

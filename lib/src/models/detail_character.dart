import 'character_origin.dart';

class CharacterDetailModel {
  int? id;
  String? name;
  String? status;
  String? species;
  String? gender;
  CharacterOriginModel ? origin;
  String? image;


  CharacterDetailModel({
    this.id,
    this.name,
    this.status,
    this.species,
    this.gender,
    this.origin,
    this.image,
  });

  factory CharacterDetailModel.fromJson(Map<String, dynamic> json){
    return CharacterDetailModel(
      id: json["id"],
      name: json["name"],
      status: json["status"],
      species: json["species"],
      gender: json["gender"],
      origin:json.containsKey("origin") && json["origin"] != null ? CharacterOriginModel.fromJson(json["origin"]): null,
      image: json["image"],
    );
  }
}
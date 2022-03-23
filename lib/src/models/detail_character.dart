class CharacterDetailModel {
  int? id;
  String? name;
  String? status;
  String? species;
  String? gender;
  String? origin;
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
      origin: CharacterDetailModel.fromJson(json["origin"]).toString(),
      image: json["image"],
    );
  }
}
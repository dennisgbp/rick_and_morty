import 'location.dart';

class Character2Model {
  /*
  id	1
name	"Rick Sanchez"
status	"Alive"
species	"Human"
type	""
gender	"Male"
  * */

  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? image;
  String? location;
  //String? episode;


  Character2Model({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.image,
    this.location,
    //this.episode,
  });

  factory Character2Model.fromJson(Map<String, dynamic> json){
    return Character2Model(
      id: json["id"],
      name: json["name"],
      status: json["status"],
      species: json["species"],
      type: json["type"],
      image: json["image"],
      location: LocationModel.fromJson(json["location"]).toString(),
      //episode:
    );
  }

  @override
  String toString() {
    return "id: ${ this.id}," "name ${this.name}" "status: ${this.status}";
  }
}


/*
 httpCharacter() async {
   final res  =  await _get("http://");
   return (res.data["results"] as List).map((e) => Character2Model.fromJson(res.data["results"])).toList() ;
}

_get(String path) {

}*/

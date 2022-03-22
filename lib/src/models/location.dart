class LocationModel {
  String? name;
  String? url;

  LocationModel({
    this.name,
    this.url,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json){
    return LocationModel(
      name: json["name"],
      url: json["url"],
    );
  }

}

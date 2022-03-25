import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:rickandmorty/src/models/character2.dart';
import 'package:rickandmorty/src/models/detail_character.dart';
import 'package:rickandmorty/src/models/episode.dart';

class CharacterHttp {
  var dio = Dio(BaseOptions(baseUrl: 'https://rickandmortyapi.com'));

  Future<List<Character2Model>> getCharacter() async {
    final res = await dio.get(
      '/api/character',
    );
    //return (res.data["results"] as List).map((e) => Character2Model.fromJson(res.data["e"])).toList() ;
    var data = (res.data["results"] as List)
        .map((e) => Character2Model.fromJson(e))
        .toList();
    //log("$data", name: "DATA DEL SERVIDOR");
    return data;
  }

  Future<EpisodeModel> getEpisode(String route) async {
    final res = await dio.get(route);
    return EpisodeModel.fromJson(res.data);
  }

  // Future<CharacterDetailModel> getDetailCharacter(String route) async {
  //   final res = await dio.get(route);
  //   return CharacterDetailModel.fromJson(res.data);
  // }

Future<CharacterDetailModel>getDetailCharacter(int id)async{
    final res = await dio.get("/api/character/$id");
    return CharacterDetailModel.fromJson(res.data);
}

}

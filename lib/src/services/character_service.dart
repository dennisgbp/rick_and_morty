import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:rickandmorty/src/models/character2.dart';

class CharacterHttp {
  var dio = Dio(BaseOptions(baseUrl: 'https://rickandmortyapi.com'));

 Future<List<Character2Model>> getCharacter() async {
    final res = await dio.request(
      'https://rickandmortyapi.com/api/character',
      options: Options(method: 'GET'),
    );
    //return (res.data["results"] as List).map((e) => Character2Model.fromJson(res.data["results"])).toList() ;
    var data = (res.data["results"] as List)
        .map((e) => Character2Model.fromJson(e))
        .toList();
    log("$data", name: "DATA DL SERVIDOR");
    return data;
  }
}


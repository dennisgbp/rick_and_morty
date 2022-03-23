import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:rickandmorty/src/models/character2.dart';
import 'package:rickandmorty/src/models/episode.dart';
import 'package:rickandmorty/src/services/character_service.dart';

class MyController extends GetxController {

  CharacterHttp serviceHttp = CharacterHttp();

  List<Character2Model>? characterList = <Character2Model>[];
  RxBool isLoad = false.obs;

  @override
  void onReady() {
    // _loadData();
    loadCharacter();
    super.onReady();
  }

  // void _loadData() async {
  //   final res  =  await serviceHttp.getCharacter();
  //   log("$res", name: "Data en el controlador");
  // }

  void loadCharacter() async{
    this.isLoad.value = true;
    final r = await serviceHttp.getCharacter();
      r.forEach((e) async {
      var _episodeRoute = e.episode?.first;
      //Reemplazar la ruta
      var _route = _episodeRoute!.replaceAll("https://rickandmortyapi.com", "");
      //traer los datos del episodio
      var _episode = await serviceHttp.getEpisode(_route);
      //ahora asignaremos el episodio al modelo de Caharacter
      e.episodeModel = _episode;

      characterList!.add(e);
      update();
    });
    this.isLoad.value = false;

  }



}

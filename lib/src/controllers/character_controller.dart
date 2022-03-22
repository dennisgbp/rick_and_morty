import 'dart:developer';

import 'package:get/get.dart';
import 'package:rickandmorty/src/models/character2.dart';
import 'package:rickandmorty/src/services/character_service.dart';

class MyController extends GetxController {

  var character = new Character2Model().obs;

    CharacterHttp serviceHttp = CharacterHttp();
  @override
  void onReady() {
    _loadData();
    super.onReady();
  }

  void _loadData() async {
    final res  =  await serviceHttp.getCharacter();
    log("$res", name: "Data en el controlador");
  }

  void loadCharacter () {

  }
}
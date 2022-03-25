import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:rickandmorty/src/models/detail_character.dart';
import 'package:rickandmorty/src/services/character_service.dart';

class DetailController extends GetxController {

  CharacterHttp serviceHttp = CharacterHttp();
  CharacterDetailModel  ? character;
  RxBool isLoad =  false.obs;

  @override
  void onReady() {
    //loadDetail();
    super.onReady();
  }

  void loadDetail(int id)async{
    this.isLoad.value = true;
    final r = await  serviceHttp.getDetailCharacter(id);
    this.character = r;
    this.isLoad.value = false;
    update();
  }

}
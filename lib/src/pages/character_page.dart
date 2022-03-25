import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rickandmorty/src/controllers/detail_controller.dart';
import 'package:rickandmorty/src/models/detail_character.dart';

class CharacterPage extends StatefulWidget {
  //static const routeName= "/detailPage";
 final int ? id;

   CharacterPage({Key? key, this.id}) : super(key: key);

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  DetailController? _controller;
@override
  void initState() {
    _controller = DetailController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetBuilder<DetailController>(
        initState: (_)=>_controller?.loadDetail(widget.id!),
        init: _controller,
        builder: (_) {
          if(_.isLoad.value)return Center(child: CircularProgressIndicator(),);
          return Scaffold(
            appBar: AppBar(
              elevation: 1,
              centerTitle: true,
              title: Text(_.character?.name??"", style: TextStyle(color: Colors.black87, fontSize: 25, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
              backgroundColor: Colors.white,
            ),
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15.0),
                  Container(
                    padding: EdgeInsets.all(0),
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                    ),
                      child: Image(image: NetworkImage(_.character!.image!,))
                  ),
                  SizedBox(height: 15.0),
                Row(
                  children: [
                      SizedBox(width: 150.0),
                      Text(_.character?.status??"", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
                      SizedBox(width: 20.0),
                      Icon(Icons.circle,
                          color: _.character?.status != "unknown" ? _.character?.status == "Alive" ? Colors.green : Colors.red : Colors.grey,
                          size: 20.0),
                    // Icon(Icons.circle,
                    //     color:  person?.status != "unknown" ? person?.status == "Alive" ? Colors.green : Colors.red : Colors.grey,
                    //     //lifetime == "Alive" ? Colors.green : Colors.red,
                    //
                    //     size: 12.0),
                  ],
                ),
                  SizedBox(height: 15.0),
                  Text('species: ${_.character?.species??""}', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
                  SizedBox(height: 15.0),
                  Text('gender: ${_.character?.gender??""}', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
                  SizedBox(height: 15.0),
                  Text('origin: ${_.character?.origin?.name??""}', textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
                 ],
              ),
            ),
          );
        }
      ),
    );
  }
}

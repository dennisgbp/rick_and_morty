import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rickandmorty/src/controllers/character_controller.dart';
import 'package:rickandmorty/src/pages/character_page.dart';
import 'package:rickandmorty/src/widgets/card_character.dart';
import 'package:rickandmorty/src/widgets/column_final.dart';


class MyApp extends StatelessWidget {
  MyController _controller =  MyController();

  //MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Scaffold(
          backgroundColor: const Color(0xFFB3b3e40),
          appBar: AppBar(
            backgroundColor: Colors.white,
            actions: <Widget>[
              Container(
                alignment: AlignmentDirectional.center,
                width: 50.0,
                //margin: EdgeInsets.only(right: 290),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://ae01.alicdn.com/kf/H38042fee7b154273aed812f26d1525a2x.jpg'),
                  radius: 25.0,
                ),
              ),
              Container(
                //padding: EdgeInsetsDirectional.all(5.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 60.0),
                    Container(
                      alignment: AlignmentDirectional.center,
                      width: 60.0,
                      //margin: EdgeInsets.only(right: 290),
                      child: Text('Docs',
                          style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(width: 10.0),
                    Container(
                      alignment: AlignmentDirectional.center,
                      width: 70.0,
                      //margin: EdgeInsets.only(right: 290),
                      child: Text('About',
                          style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(width: 20.0),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      //mainAxisAlignment: MainAxisAlignment.start,
                      alignment: AlignmentDirectional.center,
                      //curve: Curves.fastOutSlowIn,
                      width: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.orange),
                      //margin: EdgeInsets.only(right: 290),
                      child: Icon(Icons.favorite, color: Colors.white),
                    ),
                    SizedBox(width: 10.0)
                  ],
                ),
              ),
            ],
          ),
          body:  SafeArea(

            child: SingleChildScrollView(
              child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //httpCharacter(),
                      _rick1(),
                      SizedBox(height: 5.0),
                      SizedBox(
                        height: 500,
                        child: GetBuilder<MyController>(
                          init: _controller,
                          builder: (_) {
                            if(_.isLoad.value)return Center(
                              child: CircularProgressIndicator(),
                            );
                            return ListView.builder(
                              padding: EdgeInsets.all(20),
                              itemCount: _.characterList?.length,
                              itemBuilder: ( context,  i) {
                                  return InkWell(
                                    child: CardCharacter(
                                      person: _.characterList?[i],
                                    ),
                                    onTap:(){
                                      Get.to( ()=>CharacterPage(
                                        id: _.characterList?[i].id,
                                      ));
                                      print('${_.characterList?[i].id}');
                                    }
                                  );
                                },

                            );
                          }
                        ),
                      ),
                      FinalApi(),

                    ],
                  ),
            ),
          ),

        ),
      ),
    );
    /*  return Scaffold(
      appBar: AppBar(
        title: Text('Docs'),
      ),
      body: Text('The Rick and Morty API'),
    );*/
  }

  Widget _rick1() {
    return Container(
      //color: Colors.grey,
      padding: EdgeInsets.all(20.0),
      //margin: EdgeInsets.all(10.0),
      height: 400,
      width: 400,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/rick1.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.94), BlendMode.plus)),
      ),
      child: Center(
        child: Text(
          'The Rick and Morty API',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }


}

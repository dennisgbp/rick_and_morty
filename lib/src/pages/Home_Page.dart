import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rickandmorty/src/controllers/character_controller.dart';
import 'package:rickandmorty/src/widgets/card_character.dart';
import 'package:rickandmorty/src/widgets/column_final.dart';


class MyApp extends StatelessWidget {
  MyController _controller =  MyController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Scaffold(
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
          body: GetBuilder<MyController>(
            init: _controller,
            builder: (context) {
              return SingleChildScrollView(
                child: Container(
                  color: Color(0xFFB3b3e40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //httpCharacter(),
                      _rick1(),
                      SizedBox(height: 5.0),
                      CardCharacter(
                        image:
                            'https://raw.githubusercontent.com/Adalab/rick-y-morty/master/assets/img/11.jpeg',
                        name: '  Albert Einstein',
                        location: '  Earth (Replacement Dimension)',
                        type: '  Dead - Human',
                        episode: '  A Rickle in Time',
                        lifetime: false,
                      ),
                      CardCharacter(
                        image:
                        'https://static.wikia.nocookie.net/rickandmorty/images/b/b4/Evil_Summer_Clone.png/revision/latest?cb=20160923152120',
                        name: '  Evil Summer Clone',
                        location: '  Earth (C-137)',
                        type: '  Dead - Human',
                        episode: '  Meeseeks and Destroy',
                        lifetime: false,
                      ),
                      CardCharacter(
                        image:
                        'https://rickandmortyapi.com/api/character/avatar/123.jpeg',
                        name: '  Fat Morty',
                        type: '  Alive - Human',
                        location: '  Citadel of Ricks',
                        episode: '  The Ricklantis Mixup',
                        lifetime: true,
                      ),
                      CardCharacter(
                        image:
                        'https://rickandmortyapi.com/api/character/avatar/221.jpeg',
                        name: '  Melissa',
                        type: '  Alive - Mythological Creature',
                        location: '  Mr. Goldenfolds dream',
                        episode: '  Lawnmover Dog',
                        lifetime: true,
                      ),
                      CardCharacter(
                        image:
                        'https://rickandmortyapi.com/api/character/avatar/578.jpeg',
                        name: '  Snake Soldier',
                        type: '  Alive - Animal',
                        location: '  Snake Planet',
                        episode: '  Rattlestar Ricklactica',
                        lifetime: true,
                      ),
                      CardCharacter(
                        image:
                        'https://rickandmortyapi.com/api/character/avatar/688.jpeg',
                        name: '  Scarecrow Summer',
                        type: '  Dead - Robot',
                        location: '  Earth (Replacement Dimension',
                        episode: '  Mortyplicity',
                        lifetime: false,
                      ),
                      FinalApi(),
                    ],
                  ),
                ),
              );
            }
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

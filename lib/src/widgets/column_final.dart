import 'package:flutter/material.dart';

class FinalApi extends StatelessWidget {
  const FinalApi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Color(0xFFB272c30),
            child: Column(
              children: [
                SizedBox(height: 60.0),
                Row(
                  children: [
                    SizedBox(width: 5.0),
                    Text(
                      'CHARACTERS: 826',
                      style: TextStyle(fontSize: 15, color: Colors.white54),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      'LOCATIONS:126',
                      style: TextStyle(fontSize: 15, color: Colors.white54),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      'EPISODES:51',
                      style: TextStyle(fontSize: 15, color: Colors.white54),
                    ),
                    SizedBox(width: 5.0),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'SERVER STATUS',
                      style: TextStyle(fontSize: 15, color: Colors.white54),
                    ),
                    SizedBox(width: 10.0),
                    Icon(Icons.circle, color: Colors.green, size: 12.0),
                  ],
                ),
                SizedBox(height: 25.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      //width: 25,
                      decoration: BoxDecoration(color: Color(0xFFB272c30)),
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage('https://i.imgur.com/sLoWwp5.png'),
                        radius: 12.0,
                        backgroundColor: Color(0xFFB272c30),
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Container(
                      //width: 25,
                      decoration: BoxDecoration(color: Color(0xFFB272c30)),
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage('https://i.imgur.com/R5oZ6cb.png'),
                        radius: 13.0,
                        backgroundColor: Color(0xFFB272c30),
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Icon(Icons.favorite, color: Colors.white54),
                  ],
                ),
                SizedBox(height: 25.0),
                Container(
                  width: 150,
                  height: 70,
                  //child: Image.network('https://i.imgur.com/MW4cg6y.jpg'),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage('https://i.imgur.com/MW4cg6y.jpg')),
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back_ios, color: Colors.white54),
                    Icon(Icons.arrow_forward_ios, color: Colors.white54),
                    Text(
                      'by ',
                      style: TextStyle(fontSize: 15, color: Colors.white54),
                    ),
                    Text(
                      'Axel Fuhrmann ',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white54,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.yellow,
                      ),
                    ),
                    Text(
                      ' 2022',
                      style: TextStyle(fontSize: 15, color: Colors.white54),
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//import 'dart:html';

import 'package:flutter/material.dart';

class CardCharacter extends StatelessWidget {
  final String? image;
  final String? name;
  final bool? lifetime;
  final String? type;
  final String? location;
  final String? episode;

  const CardCharacter({
    Key? key,
    this.image,
    this.name,
    this.lifetime,
    this.type,
    this.location,
    this.episode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 295,
      decoration: new BoxDecoration(
        color: Color(0xFFB4d5154),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10), topLeft: Radius.circular(10)),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(image!)),
              color: Colors.transparent,
              // borderRadius: BorderRadius.only(topLeft:Radius.circular(5), topRight:Radius.circular(5) )
            ),
            /*child: Image(
                  fit: BoxFit.contain,
                  image: NetworkImage(''
            //image!,))*/
          ),
          SizedBox(height: 15.0),
          Text(
            name!,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Row(
            children: [
              SizedBox(width: 15.0),
              Icon(Icons.circle,
                  color: lifetime == true ? Colors.green : Colors.red,
                  size: 12.0),
              SizedBox(width: 8.0),
              Text(
                type!,
                style: TextStyle(fontSize: 15, color: Colors.white),
              )
            ],
          ),
          SizedBox(height: 15.0),
          Text(
            '  Last known location:',
            style: TextStyle(fontSize: 15, color: Colors.white38),
          ),
          Text(
            location!,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          SizedBox(height: 15.0),
          Text(
            ''
            '  First seen in:',
            style: TextStyle(fontSize: 15, color: Colors.white38),
          ),
          Text(
            episode!,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          SizedBox(height: 15.0),
        ],
      ),
    );
  }
}

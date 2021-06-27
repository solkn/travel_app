import 'package:flutter/material.dart';

import '../screens/sight_details_screen.dart';

class PlaceItem extends StatelessWidget {
  final Map travel;

  PlaceItem({this.travel});

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.only(bottom: 20.0),
      child:Container(
        padding:EdgeInsets.fromLTRB(16.0,0,0,0),
        child: Column(children: <Widget>[

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("Popular",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
          maxLines: 1,
          textAlign: TextAlign.start,
        ),

        ],
      ),
      SizedBox(height: 20),
      Row(children: <Widget>[
        Column(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              "${travel["image"]}",
              height: 70.0,
              width: 70.0,
              fit: BoxFit.cover,
            ),
          ),
        ],
        ),
        SizedBox(width: 20.0),

        Column(children: <Widget>[
          Row(children: <Widget>[
            Text("European Tour",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
              maxLines: 1,
              textAlign: TextAlign.left,
            ),
          ],
          ),
          SizedBox(height: 20.0),

          Row(children: <Widget>[
            Text("14 april - 25 april 20201",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
                color: Colors.blueGrey[300],
              ),
              maxLines: 1,
              textAlign: TextAlign.left,
            ),
          ],
          ),
        ],
        ),
      ],

      ),
      ],
    ),
    ),


       );

  }
}

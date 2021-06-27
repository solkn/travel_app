import 'package:flutter/material.dart';
import 'package:travel_app/models/model.dart';
import 'package:travel_app/repository/repository.dart';
import 'package:travel_app/widgets/horizontal_place_item.dart';
import 'package:travel_app/widgets/icon_badge.dart';
import 'package:travel_app/widgets/search_bar.dart';
import 'package:travel_app/widgets/vertical_place_item.dart';

class SightHomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(

      child: ListView(
        children: <Widget>[
          buildHorizontalList(context),
          buildVerticalList(),
        ],
      ),
    );
  }

  buildHorizontalList(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, left: 20.0),
      height: 250.0,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        primary: false,
        itemCount: 5,//sights.name == null ? 0.0 : sights.name.length,
        itemBuilder: (BuildContext context, int index) {
         SightRepository sr = new SightRepository();
              Map<String,dynamic> sight = sr.sights[index].toMap();
          return HorizontalPlaceItem(sight: sight);
        },
      ),
    );
  }

  buildVerticalList() {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: ListView.builder(
        primary: false,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,//sights.name == null ? 0 : sights.name.length,
        itemBuilder: (BuildContext context, int index) {
          SightRepository sr = new SightRepository();
                    Map<String,dynamic> sight = sr.sights[index].toMap();
                return HorizontalPlaceItem(sight: sight);
        },
      ),
    );
  }
}
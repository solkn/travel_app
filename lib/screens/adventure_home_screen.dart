import 'package:flutter/material.dart';
import 'package:travel_app/repository/repository.dart';
import 'package:travel_app/widgets/adventure_place.dart';
import 'package:travel_app/widgets/sight_place.dart';

class AdventureHomeScreen extends StatelessWidget {

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
          AdventureRepository ar = new AdventureRepository();
          Map<String,dynamic> adventure = ar.adventures[index].toMap();
          return AdventurePlace(adventure: adventure);
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
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          AdventureRepository ar = new AdventureRepository();
          Map<String,dynamic> adventure = ar.adventures[index].toMap();
          return SightPlace(sight: adventure);
        },
      ),
    );
  }
}
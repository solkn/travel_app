import 'package:flutter/material.dart';
import 'package:travel_app/models/model.dart';
import 'package:travel_app/repository/repository.dart';
import 'package:travel_app/widgets/horizontal_place_item.dart';
import 'package:travel_app/widgets/icon_badge.dart';
import 'package:travel_app/widgets/search_bar.dart';
import 'package:travel_app/widgets/vertical_place_item.dart';

class SightHomeScreen extends StatelessWidget {
  final Sight sights;

  const SightHomeScreen({Key key, this.sights}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Explore",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: IconBadge(
              icon: Icons.notifications_none,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Explore",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: SearchBar(),
          ),
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
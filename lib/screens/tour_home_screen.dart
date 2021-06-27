import 'package:flutter/material.dart';
import 'package:travel_app/models/model.dart';
import 'package:travel_app/repository/tour_repository.dart';
import 'package:travel_app/widgets/tour_place.dart';

class TourHomeScreen extends StatelessWidget {
  final Tour tours;

  const TourHomeScreen({Key key, this.tours}) : super(key: key);
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
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          TourRepository tr = new TourRepository();
          Map<String,dynamic> tour = tr.tours[index].toMap();
          return TourPlace(tour: tour);
        },
      ),
    );
  }

  buildVerticalList() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: ListView.builder(
        primary: false,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          TourRepository tr = new TourRepository();
          Map<String,dynamic> tour = tr.tours[index].toMap();
          return TourPlace(tour: tour);
        },
      ),
    );
  }
}
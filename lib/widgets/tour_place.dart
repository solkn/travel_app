import 'package:flutter/material.dart';
import 'package:travel_app/screens/tour_details_screen.dart';

class TourPlace extends StatelessWidget {
  final Map tour;

  TourPlace({this.tour});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: InkWell(
        child: Container(
          height: 250.0,
          width: 140.0,
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  "${tour["image"]}",
                  height: 178.0,
                  width: 140.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 2.0),
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return TourDetailsScreen();
              },
            ),
          );
        },
      ),
    );
  }
}

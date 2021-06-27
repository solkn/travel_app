import 'package:flutter/material.dart';

import '../screens/sight_details_screen.dart';

class SightPlace extends StatelessWidget {
  final Map sight;

  SightPlace({this.sight});

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
                  "${sight["image"]}",
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
                return SightDetailsScreen();
              },
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../screens/sight_details_screen.dart';

class AdventurePlace extends StatelessWidget {
  final Map adventure;

  AdventurePlace({this.adventure});

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
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "${adventure["image"]}",
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

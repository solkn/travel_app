import 'package:flutter/material.dart';
import 'package:travel_app/screens/sight_home_Screen.dart';
import 'package:travel_app/widgets/icon_badge.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState()=>HomeScreenState();

}
class HomeScreenState extends State<HomeScreen>with SingleTickerProviderStateMixin{

  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
        bottom: TabBar(
          controller: controller,
          tabs: [
            Tab(
              text: "Sights",
            ),
            Tab(
              text: "Tours",
            ),
            Tab(
              text: "Adventures",
            )
          ],
        ),
      ),
      body: TabBarView(controller: controller,children: <Widget>[
             SightHomeScreen(),
             SightHomeScreen(),
             SightHomeScreen(),
      ],
      ),
    );
    

  }


}
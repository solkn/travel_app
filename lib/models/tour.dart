import 'package:flutter/material.dart';

class Tour{
  final int id;
  final int rating;
  final String name;
  final String location;
  double price;
  String image;
  String available;
  double duration;
  double totalPrice;

  Tour({
    @required this.id,
    @required this.rating,
    @required this.name,
    @required this.location,
    @required this.price,
    @required this.image,
    @required this.available,
    @required this.duration,
    @required this.totalPrice

  });
  Map<String,dynamic>toMap()=>{
    "id":id,
    "rating":rating,
    "name":name,
    "location":location,
    "price":price,
    "image":image,
    "available":available,
    "duration":duration,
    "totalPrice":totalPrice

  };
}
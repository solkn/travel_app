import 'package:flutter/material.dart';
import 'package:travel_app/models/model.dart';

class TourRepository{

  List<Tour>tours =[

    Tour(
        id: 1,
        rating: 4,
        name: "Axum",
        location: "Axum, Ethiopia",
        price: 20.0,
        image: "assets/6.jpg",
        available: "10:00--18:00 . Mon -- Sat",
        duration: 4.0,
        totalPrice: 60
    ),

    Tour(
        id: 2,
        rating: 5,
        name: "Lalibela",
        location: "Wollo, Ethiopia",
        price: 20.0,
        image: "assets/7.jpeg",
        available: "10:00--18:00 . Mon -- Sat",
        duration: 4.0,
        totalPrice: 60
    ),
    Tour(
        id: 3,
        rating: 6,
        name: "Abay River",
        location: "Sekela, Ethiopia",
        price: 20.0,
        image: "assets/8.jpeg",
        available: "10:00--18:00 . Mon -- Sat",
        duration: 4.0,
        totalPrice: 60
    ),
    Tour(
        id: 4,
        rating: 5,
        name: "Fasiledes Palace",
        location: "Gondar, Ethiopia",
        price: 20.0,
        image: "assets/9.jpg",
        available: "10:00--18:00 . Mon -- Sat",
        duration: 4.0,
        totalPrice: 60
    ),
    Tour(
        id: 5,
        rating: 5,
        name: "Lake Tana",
        location: "Bahirdar, Ethiopia",
        price: 20.0,
        image: "assets/10.jpg",
        available: "10:00--18:00 . Mon -- Sat",
        duration: 4.0,
        totalPrice: 60
    ),

  ];
}
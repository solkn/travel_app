import 'package:flutter/material.dart';
import 'package:travel_app/models/model.dart';

class AdventureRepository{

  List<Adventure>adventures =[

    Adventure(
        id: 1,
        rating: 4,
        name: "Hotel Dolah Amet & Suites",
        location: "London, England",
        price: 20.0,
        image: "assets/11.jpg",
        available: "10:00--18:00 . Mon -- Sat",
        duration: 4.0,
        totalPrice: 60
    ),

    Adventure(
        id: 2,
        rating: 5,
        name: "Beach Mauris Blandit",
        location: "Lisbon, Portugal",
        price: 20.0,
        image: "assets/12.webp",
        available: "10:00--18:00 . Mon -- Sat",
        duration: 4.0,
        totalPrice: 60
    ),
    Adventure(
        id: 3,
        rating: 6,
        name: "Ipsum Restaurant",
        location: "Paris, France",
        price: 20.0,
        image: "assets/13.jpeg",
        available: "10:00--18:00 . Mon -- Sat",
        duration: 4.0,
        totalPrice: 60
    ),
    Adventure(
        id: 4,
        rating: 5,
        name: "Curabitur Beach",
        location: "Rome, Italy",
        price: 20.0,
        image: "assets/14.jpg",
        available: "10:00--18:00 . Mon -- Sat",
        duration: 4.0,
        totalPrice: 60
    ),
    Adventure(
        id: 5,
        rating: 5,
        name: "Tincidunt Pool",
        location: "Madrid, Spain",
        price: 20.0,
        image: "assets/15.jpg",
        available: "10:00--18:00 . Mon -- Sat",
        duration: 4.0,
        totalPrice: 60
    ),

  ];
}
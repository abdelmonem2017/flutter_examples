import 'package:flutter_examples/travel_app_desgin_example/models/activity_model.dart';
import 'package:flutter_examples/travel_app_desgin_example/models/detination_model.dart';
import 'package:flutter_examples/travel_app_desgin_example/models/hotel_model.dart';

final List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/travel_app_img/venice.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTime: ["9:00 am", "11:00 am"],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/travel_app_img/venice1.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTime: ["9:00 am", "11:00 am"],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/travel_app_img/venice2.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTime: ["9:00 am", "11:00 am"],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/travel_app_img/venice3.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTime: ["9:00 am", "11:00 am"],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/travel_app_img/paris2.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTime: ["9:00 am", "11:00 am"],
    rating: 5,
    price: 30,
  )
];

final List<Hotel> hotels = [
  Hotel(
      imageUrl: 'assets/images/travel_app_img/hotel.jpg',
      name: 'Hotel 0',
      address: '404 Great St',
      price: 175),
  Hotel(
      imageUrl: 'assets/images/travel_app_img/hotel1.jpg',
      name: 'Hotel 0',
      address: '404 Great St',
      price: 175),
  Hotel(
      imageUrl: 'assets/images/travel_app_img/hotel2.jpg',
      name: 'Hotel 0',
      address: '404 Great St',
      price: 175),
  Hotel(
      imageUrl: 'assets/images/travel_app_img/hotel3.jpg',
      name: 'Hotel 0',
      address: '404 Great St',
      price: 175),
];

final List<Destination> destinations = [
  Destination(
      imageUrl: 'assets/images/travel_app_img/paris.jpg',
      city: 'Paris',
      country: 'France',
      description: 'Visit Venice for an amazing trip for this summer',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/travel_app_img/venice.jpg',
      city: 'Venice',
      country: 'Italy',
      description: 'Visit Venice for an amazing trip for this summer',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/travel_app_img/venice1.jpg',
      city: 'Venice',
      country: 'Italy',
      description: 'Visit Venice for an amazing trip for this summer',
      activities: activities)
];

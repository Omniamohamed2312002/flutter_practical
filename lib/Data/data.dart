import 'package:flutter/material.dart';
import 'package:flutter_practical/Data/search_page.dart';
import 'package:flutter_practical/Model/notification_model.dart';
import 'package:flutter_practical/Model/shoe_model.dart';
import 'package:flutter_practical/homepage.dart';
import 'package:flutter_practical/notifications_page.dart';
import 'package:flutter_practical/profile_page.dart';

final List<Widget> pages = [
  const HomePage(),
  const SearchPage(),
  const NotificationsPage(),
  const ProfilePage(),
];

List<NotificationModel> notifications = [
  NotificationModel(
    title: "New Release Shoes!",
    image:
        'assets/images/s4.jpg',
    description:
        "The new Shoes is \$ 125 for The Great Master, you can buy it now.",
    time: "6 min ago",
  ),
  NotificationModel(
    title: "New Release Shoes!",
    image:
         'assets/images/s5.jpg',
    description:
        "The new Shoes is \$ 125 for The Great Master, you can buy it now.",
    time: "1 hr ago",
  ),
  NotificationModel(
    title: "New Release Shoes!",
    image:
         'assets/images/s1.jpg',
    description:
        "The new Shoes is \$ 125 for The Great Master, you can buy it now.",
    time: "6 hr ago",
  ),
  NotificationModel(
    title: "New Release Shoes!",
    image:
         'assets/images/s6.jpg',
    description:
        "The new Shoes is \$ 125 for The Great Master, you can buy it now.",
    time: "1 day ago",
  ),
  NotificationModel(
    title: "New Release Shoes!",
    image:
         'assets/images/s1.jpg',
    description:
        "The new Shoes is \$ 125 for The Great Master, you can buy it now.",
    time: "6 min ago",
  ),
  NotificationModel(
    title: "New Release Shoes!",
    image:
         'assets/images/s6.jpg',
    description:
        "The new Shoes is \$ 125 for The Great Master, you can buy it now.",
    time: "1 hr ago",
  ),
  NotificationModel(
    title: "New Release Shoes!",
    image:
         'assets/images/s4.jpg',
    description:
        "The new Shoes is \$ 125 for The Great Master, you can buy it now.",
    time: "6 hr ago",
  ),
  NotificationModel(
    title: "New Release Shoes!",
    image:
         'assets/images/s5.jpg',
    description:
        "The new Shoes is \$ 125 for The Great Master, you can buy it now.",
    time: "1 day ago",
  ),
  NotificationModel(
    title: "New Release Shoes!",
    image:
         'assets/images/s1.jpg',
    description:
        "The new Shoes is \$ 125 for The Great Master, you can buy it now.",
    time: "6 min ago",
  ),
  NotificationModel(
    title: "New Release Shoes!",
    image:
        'assets/images/s4.jpg',
    description:
        "The new Shoes is \$ 125 for The Great Master, you can buy it now.",
    time: "1 hr ago",
  ),
  NotificationModel(
    title: "New Release Shoes!",
    image:
        'assets/images/s5.jpg',
    description:
        "The new Shoes is \$ 125 for The Great Master, you can buy it now.",
    time: "6 hr ago",
  ),
  NotificationModel(
    title: "New Release Shoes!",
    image:
        'assets/images/s6.jpg',
    description:
        "The new Shoes is \$ 125 for The Great Master, you can buy it now.",
    time: "1 day ago",
  ),
];

List<ShoeModel> shoes = [
  ShoeModel(
    name: 'Trainers',
    color: 'purple',
    price: 110,
    imageUrl:
        'assets/images/s5.jpg',
  ),
  ShoeModel(
    name: 'Nike Sneakers',
    color: 'black',
    price: 90,
    imageUrl:
        'assets/images/s4.jpg',
  ),
  ShoeModel(
    name: 'Causal Shoes',
    color: 'grey',
    price: 89,
    imageUrl:
         'assets/images/s1.jpg',
  ),
  ShoeModel(
    name: 'Modern Converse',
    color: 'yellow',
    price: 78,
    imageUrl:
         'assets/images/s6.jpg',
  ),
  ShoeModel(
    name: 'Trainers',
    color: 'purple',
    price: 110,
    imageUrl:
         'assets/images/s1.jpg',
  ),
  ShoeModel(
    name: 'Nike Sneakers',
    color: 'black',
    price: 90,
    imageUrl:
         'assets/images/s4.jpg',
  ),
  ShoeModel(
    name: 'Causal Shoes',
    color: 'grey',
    price: 89,
    imageUrl:
         'assets/images/s5.jpg',
  ),
  ShoeModel(
    name: 'Modern Converse',
    color: 'yellow',
    price: 78,
    imageUrl:
        'assets/images/s6.jpg',
  ),
  ShoeModel(
    name: 'Trainers',
    color: 'purple',
    price: 110,
    imageUrl:
        'assets/images/s1.jpg',
  ),
  ShoeModel(
    name: 'Nike Sneakers',
    color: 'black',
    price: 90,
    imageUrl:
         'assets/images/s4.jpg',
  ),
  ShoeModel(
    name: 'Causal Shoes',
    color: 'grey',
    price: 89,
    imageUrl:
         'assets/images/s5.jpg',
  ),
  ShoeModel(
    name: 'Modern Converse',
    color: 'yellow',
    price: 78,
    imageUrl:
         'assets/images/s6.jpg',
  ),
];

import 'package:flutter/material.dart';

class ProfileModel {
  ProfileModel(
      {@required this.name,
      @required this.title,
      @required this.photo,
      @required this.profileColor});

  final String name;
  final String title;
  final String photo;
  final Color profileColor;
}

final profileData = ProfileModel(
  name: 'Akinjobi Sodiq',
  title: 'Babalawo & Fluzzard',
  photo: 'geek.jpg',
  profileColor: Color(0xFF1f6fff),
);

final profileColors = [
  Color(0xFF1f6fff),
  Colors.purple,
  Colors.green,
  Colors.brown,
];

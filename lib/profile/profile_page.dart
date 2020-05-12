import 'package:flutter/material.dart';

import 'profile_card.dart';
import 'profile_model.dart';
import '../widgets.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  static const _profileCardHeight = 260.0;
  Color _profileColor = profileColors[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ColorPickerMenu(_onColorSelected),
      body: SizedBox.expand(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: _profileCardHeight,
                  horizontal: 16,
                ),
                child: About(),
              ),
            ),
            Container(
              height: _profileCardHeight,
              child: ProfileCard(
                data: profileData,
                profileColor: _profileColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onColorSelected(Color color) {
    setState(() {
      _profileColor = color;
    });
  }
}

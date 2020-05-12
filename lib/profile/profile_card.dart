import 'package:day11/profile/profile_card_painter.dart';
import 'package:flutter/material.dart';

import '../extensions.dart';
import 'profile_model.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard({
    @required this.data,
    @required this.profileColor,
  });

  final ProfileModel data;
  final Color profileColor;
  static const double avatarRadius = 48;
  static const double titleBottomMargin = (avatarRadius * 2) + 18;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CustomPaint(
          size: Size.infinite,
          painter: ProfileCardPainter(
              color: profileColor, avatarRadius: avatarRadius),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: titleBottomMargin,
          child: Column(
            children: <Widget>[
              Text(
                data.name,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.grey.shade100),
              ),
              Text(
                data.title,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.grey.shade300),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: CircleAvatar(
            radius: avatarRadius,
            backgroundColor: profileColor.darker(),
            backgroundImage: AssetImage('images/${profileData.photo}'),
          ),
        ),
      ],
    );
  }
}

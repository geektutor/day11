import 'package:flutter/material.dart';
import 'profile/profile_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          height: 100,
          child: CardConnect(
            cardColor: Color(0xFF3b5998),
            iconColor: Colors.white,
            cardIcon: FontAwesomeIcons.facebook,
            cardLink: 'Connect on Facebook',
            url: 'http://facebook.com/sodson11',
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 100,
          child: CardConnect(
            cardColor: Color(0xFF00acee),
            iconColor: Colors.white,
            cardIcon: FontAwesomeIcons.twitter,
            cardLink: 'Connect on Twitter',
            url: 'http://twitter.com/geektutor',
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 100,
          child: CardConnect(
            cardColor: Color(0xFF0e76a8),
            iconColor: Colors.white,
            cardIcon: FontAwesomeIcons.linkedin,
            cardLink: 'Connect on LinkedIn',
            url: 'http://linkedin.com/in/geektutor',
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 100,
          child: CardConnect(
            cardColor: Colors.blue.shade800,
            iconColor: Colors.white,
            cardIcon: FontAwesomeIcons.envelope,
            cardLink: 'Shoot me an Email',
            url: 'mailto: sodiq.akinjobi@gmail.com',
          ),
        ),
      ],
    );
  }
}

class CardConnect extends StatelessWidget {
  CardConnect(
      {this.cardColor, this.iconColor, this.cardLink, this.cardIcon, this.url});
  final String cardLink;
  final Color cardColor;
  final IconData cardIcon;
  final String url;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      elevation: 10.0,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: <Widget>[
          SizedBox(width: 20),
          Expanded(
            flex: 1,
            child: Text(
              cardLink,
              style: TextStyle(fontSize: 18, color: iconColor),
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              icon: FaIcon(
                cardIcon,
                color: iconColor,
                size: 30,
              ),
              onPressed: () {
                cardURL(url);
              },
            ),
          ),
        ],
      ),
    );
  }
}

cardURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class ColorPickerMenu extends StatelessWidget {
  ColorPickerMenu(this.onColorSelected);

  final void Function(Color color) onColorSelected;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: PopupMenuButton<Color>(
        onSelected: onColorSelected,
        icon: Icon(
          Icons.edit,
        ),
        itemBuilder: (BuildContext context) {
          return profileColors.map((Color color) {
            return PopupMenuItem<Color>(
              value: color,
              child: Container(
                decoration: ShapeDecoration(
                  color: color,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                height: 10,
              ),
            );
          }).toList();
        },
      ),
      onPressed: () {},
    );
  }
}

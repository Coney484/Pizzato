import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Headers extends ChangeNotifier {
  Widget appBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(icon: Icon(FontAwesomeIcons.userAlt), onPressed: () {}),
          Row(
            children: [
              Icon(FontAwesomeIcons.locationArrow,
              color: Colors.grey.shade600,),
              Text(
                'New Police Area',
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          IconButton(
              icon: Icon(
                FontAwesomeIcons.search,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}

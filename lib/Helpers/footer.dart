import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pizzato/Views/mycart.dart';

class Footers extends ChangeNotifier {
  Widget floatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushReplacement(
            context,
            PageTransition(
                child: MyCart(), type: PageTransitionType.rightToLeftWithFade));
      },
      child: Icon(EvaIcons.shoppingBag),
    );
  }
}

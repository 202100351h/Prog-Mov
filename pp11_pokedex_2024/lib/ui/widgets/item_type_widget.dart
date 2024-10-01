import 'package:flutter/material.dart';

class ItemTypeWidget extends StatelessWidget {
  String text;

  ItemTypeWidget({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 4.0,
        right: 12.0,
        top: 4.0,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 14.0,
        vertical: 4.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.25),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

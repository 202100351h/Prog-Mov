import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String data;
  final String title;

  DetailPage({
    required this.data,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Peso: $data",
            style: TextStyle(
              color: Colors.black45,
            ),
          ),
          Text(
            "e.71 kg",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

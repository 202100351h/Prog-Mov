import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double weight = 70;
  double height = 175;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2b2d42),
        title: const Text(
          "IMC Calculator App",
          style: TextStyle(
            fontFamily: 'Manrope',
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 2.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "Bienvenido, selecciona tu peso y altura:",
              style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 15.0,
                color: Color(0xFF2b2d42),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  "75",
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2b2d42),
                  ),
                ),
                SizedBox(
                  width: 2.0,
                ),
                Text(
                  "Kg",
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 14.0,
                    color: Color(0xFF2b2d42),
                  ),
                ),
              ],
            ),
            Slider(
              value: weight,
              min: 20,
              max: 200,
              //divisions: 1,
              onChanged: (double value) {
                setState(() {
                  weight = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  "175",
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2b2d42),
                  ),
                ),
                SizedBox(
                  width: 2.0,
                ),
                Text(
                  "cm",
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 14.0,
                    color: Color(0xFF2b2d42),
                  ),
                ),
              ],
            ),
            Slider(
              value: height,
              min: 20,
              max: 200,
              //divisions: 1,
              onChanged: (double value) {
                setState(
                  () {
                    height = value;
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

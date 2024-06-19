import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.deepPurple,
        backgroundColor: Color.fromARGB(255, 217, 47, 124),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network("https://th.bing.com/th/id/OIP.cWdCDtfAdL8ewApVHZC5nwAAAA?rs=1&pid=ImgDetMain",
              height: 150.0,
              width: 150.0,
              fit: BoxFit.fill,),
              Container(
                child: Column(children: [ElevatedButton(onPressed: () {
                  print("LA BEBA")
                }, child: Text("MANTEKA"))],),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.redAccent,
              ),
              Text("Otro elemento"),
            ],
          ),
        ),
      ),
    ),
  );
}
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Page"),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(12.0),
            padding: EdgeInsets.all(10.0),
            //color: Colors.blue,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(4, 4),
                  blurRadius: 12.0,
                ),
                // BoxShadow(
                //   color: Colors.redAccent.withOpacity(0.5),
                //   offset: Offset(-4, -4),
                //   blurRadius: 12.0,
                // ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tempus dapibus nunc eget eleifend. Curabitur vitae velit justo. Cras mattis quam sit amet finibus mollis. Pellentesque et sollicitudin dui. Donec mauris urna, egestas quis nulla at, luctus vestibulum ante. Aenean a tellus vitae ipsum porttitor condimentum. Curabitur finibus sem non quam commodo, a feugiat diam pellentesque. Nullam accumsan eleifend sapien, vitae commodo lacus ullamcorper eget. ",
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "Follow me",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.deepPurple.withOpacity(0.95),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

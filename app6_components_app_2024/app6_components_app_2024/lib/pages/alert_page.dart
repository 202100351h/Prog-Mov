import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  void showMyAlert1(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Titulo del AlertDialog"),
          backgroundColor: Colors.white,
          content: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eleifend dapibus quam sit amet faucibus. "),
          actions: [
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                //backgroundColor: Colors.deepPurple,
              ),
              child: Text("Cancelar"),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }

  void showMyAlert2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
          content: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 160.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/img/persona1.jpg",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                const Text(
                  "Your video has been uploaded!",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color(0xff424550),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  "You're video has finished uploading and is live.",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xff424550).withOpacity(0.65),
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Row(
                  children: [
                    Text(
                      " Share link",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff424550).withOpacity(0.80),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6.0, vertical: 9.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black26.withOpacity(0.16)),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          "untitle.com/total/promo",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(fontSize: 13.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6.0,
                    ),
                    OutlinedButton.icon(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                      icon: Icon(Icons.link),
                      label: Text(
                        "Copy link",
                        style: TextStyle(
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Text(
                          "Cancelar",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff7E56DA),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                        ),
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void showMyAlert3(BuildContext context) {
    showAboutDialog(context: context);
  }

  void showMyAlert4(BuildContext context) {
    showAboutDialog(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 2.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert1(context);
              },
              child: Text("Alert 1"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert2(context);
              },
              child: Text("Alert 2"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert3(context);
              },
              child: Text("Alert 3"),
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert4(context);
              },
              child: Text("Alert 4"),
            )
          ],
        ),
      ),
    );
  }
}

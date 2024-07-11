import 'package:app6_components_app_2024/pages/alert_page.dart';
import 'package:app6_components_app_2024/pages/avatar_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20.0),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/img/david_chicle.png"),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.75),
                      offset: const Offset(5, 5),
                      blurRadius: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Flutter Components",
                style: GoogleFonts.poppins(
                  fontSize: 23.0,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(
                width: 185.0,
                child: Divider(),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ItemComponentWidget(
                title: "Avatar",
                toPage: const AvatarPage(),
              ),
              ItemComponentWidget(
                title: "Alert",
                toPage: const AlertPage(),
              ),
              ItemComponentWidget(
                title: "Cards",
                toPage: const AvatarPage(),
              ),
              ItemComponentWidget(
                title: "Inputs",
                toPage: const AvatarPage(),
              ),
              ItemComponentWidget(
                title: "Lists",
                toPage: const AvatarPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  String title;
  Widget toPage;

  ItemComponentWidget({super.key, required this.title, required this.toPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 12.0,
            offset: const Offset(5, 5),
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => toPage,
            ),
          );
        },
        leading: const Icon(
          Icons.check_circle_outline,
          color: Colors.black45,
        ),
        title: Text(
          title,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "Ir a detalle de $title",
          style: GoogleFonts.poppins(),
        ),
        trailing: const Icon(
          Icons.chevron_right,
          color: Colors.black45,
        ),
      ),
    );
  }
}

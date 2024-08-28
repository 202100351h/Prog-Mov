import 'package:app9_shared_2024/pages/my_profile_page.dart';
import 'package:flutter/material.dart';

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.pexels.com/photos/73873/star-clusters-rosette-nebula-star-galaxies-73873.jpeg"),
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg"),
                  ),
                  Text(
                    "Fiorella Gonzales Torres",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Administrador",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // el menu parecido al diseño
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (contex) => MyProfilePage(),
                ),
              );
            },
            leading: Icon(
              Icons.person,
              color: Colors.black54,
            ),
            title: Text("My Profile"),
          ),
          ListTile(
            leading: Icon(Icons.file_copy),
            title: Text("Portafolio"),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Change Password"),
          ),
          Divider(
            indent: 12,
            endIndent: 12,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Logout"),
          ),
        ],
      ),
    );
  }
}

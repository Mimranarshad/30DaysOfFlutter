import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(children: [
        Container(
          color: Colors.deepPurple,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountEmail: Text('Imran.citOffcial@sittap.com'),
                  accountName: Text(
                    "M Imran",
                    style: TextStyle(fontSize: 22),
                  ),
                  decoration: BoxDecoration(color: Colors.deepPurple),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: const Color(0xFF778899),
                    backgroundImage: NetworkImage(
                        "https://media.licdn.com/dms/image/D4D03AQHoy9s0gUgw1Q/profile-displayphoto-shrink_200_200/0/1670000497094?e=1681344000&v=beta&t=A8VeAw2dLMXXsmS-OBAX0SI7D06IKrancXrgzcSC1sA"),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                  textScaleFactor: 1.2,
                ),
                onTap: () {
                  // Navigate to the second screen
                },
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text(
                  "Profile",
                  style: TextStyle(color: Colors.white),
                  textScaleFactor: 1.2,
                ),
                onTap: () {
                  // Navigate to the second screen
                },
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: Text(
                  "Mail me",
                  style: TextStyle(color: Colors.white),
                  textScaleFactor: 1.2,
                ),
                onTap: () {
                  // Navigate to the second screen
                },
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 1,
          left: 0,
          right: 0,
          child: Container(
            height: 50,
            color: Colors.white,
            alignment: Alignment.center,
            child: Text(
              'Footer',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageUrl = "https://tellusdaily.com/wp-content/uploads/2022/02/Is-Putin-creating-a-pretext-for-war.jpg";
   return Drawer(
    child: Container(
      color: Colors.black26,
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(accountName: Text("SLR"), accountEmail: Text("slr@gmail.com"),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl)),
            decoration: BoxDecoration(color: Colors.lightBlue),
            )
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.white,),
            title: Text("Home", textScaleFactor: 1.2,
                style: TextStyle(
              fontWeight:  FontWeight.w600,
            )
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled, color: Colors.white,),
            title: Text("Profile", textScaleFactor: 1.2,
                style: TextStyle(
                  fontWeight:  FontWeight.w600,
                )
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail, color: Colors.white,),
            title: Text("Mail Me", textScaleFactor: 1.2,
                style: TextStyle(
                  fontWeight:  FontWeight.w600,
                )
            ),
          ),
        ],
      ),
    ),
    );
  }
}

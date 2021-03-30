import 'package:flutter/material.dart';
import 'main.dart';
import 'nextpage.dart';

class Drawerfile extends StatefulWidget{
  @override
  _DrawerfileState createState() => _DrawerfileState();
}
class _DrawerfileState extends State<Drawerfile>{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Shakeeb Ahmed Khan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            accountEmail: Text(
              'abcd@gmail.com',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: Image(
                image: AssetImage('images/ferrari.jpg'),
              ),
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                child: Image(
                  image: AssetImage('images/ferrari.jpg'),
                ),
              ),
            ],
            // onDetailsPressed: (){}, // this is used for toggling option appear on screen
          ),
          ListTile(
            leading: Icon(Icons.account_balance_rounded),
            title: Text(
              'Account Type',
            ),
            // trailing: Icon(Icons.account_balance_rounded), // for showing icon in the end
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => NewPage(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text(
              'Password',
            ),
            // trailing: Icon(Icons.account_balance_rounded), // for showing icon in the end
            onTap: () => print('Hy I am Shakeeb Ahmed khan'),
          ),
          Divider(),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child:  ListTile(
                leading: Icon(Icons.security),
                title: Text(
                  'Password',
                ),
                // trailing: Icon(Icons.account_balance_rounded), // for showing icon in the end
                onTap: () => print('Hy I am Shakeeb Ahmed khan'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
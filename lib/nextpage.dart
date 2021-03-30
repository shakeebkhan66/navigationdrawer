import 'package:flutter/material.dart';
import 'drawerfile.dart';

class NewPage extends StatefulWidget{
  @override
  _NewPageState createState() => _NewPageState();
}
class _NewPageState extends State<NewPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Page',
        ),
      ),
      drawer: Drawerfile(),
      body: Center(
        child: FlutterLogo(
          size: 100.0,
          textColor: Colors.red,
        ),
      ),
    );
  }
}
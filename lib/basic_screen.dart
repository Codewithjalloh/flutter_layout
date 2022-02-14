import 'package:flutter/material.dart';
import 'package:flutter_layout_one/immutable_widget.dart';
import 'package:flutter_layout_one/text_layout.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Welcome to Flutter"),
        actions: [
          Padding(padding: const EdgeInsets.all(10.0),
          child: Icon(Icons.edit),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/beach.jpeg"),
                TextLayout()
              ],
            ),
          ),

        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.lightBlue,
          child: Center(
            child: Text("I am a drawer!"),
          ),
        ),
      ),
    );
  }
}

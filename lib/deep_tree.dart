import 'package:flutter/material.dart';

class DeepTree extends StatelessWidget {
  const DeepTree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("It's all widgets!"),
              Text("Let\'s find out how deep the rabbit hole does."),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(),
                  Text("Fluter is amazing."),
                ],
              ),
              Expanded(child: Container(
                color: Colors.purple,
              ),),
              Text("Let\'s find out how deep the rabbit hole goes."),
            ],
          ),
        ),
      ),
    );
  }
}

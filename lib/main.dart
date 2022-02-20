

import 'package:flutter/material.dart';
import 'package:flutter_layout_one/basic_screen.dart';
import 'package:flutter_layout_one/deep_tree.dart';
import 'package:flutter_layout_one/e_commerce_screen_before.dart';
import 'package:flutter_layout_one/flex_screen.dart';
import 'package:flutter_layout_one/immutable_widget.dart';
import 'package:flutter_layout_one/profile_screen.dart';

void main() => runApp(StaticApp());

class StaticApp extends StatelessWidget {
  const StaticApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ECommerceScreen(),
    );
  }
}

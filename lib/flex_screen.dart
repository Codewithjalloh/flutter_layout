import 'package:flutter/material.dart';
import 'package:flutter_layout_one/labeled_container.dart';

class FlexScreen extends StatelessWidget {
  const FlexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible and Expanded"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ..._header(context, "Expanded"),
          _buildExpanded(context),
          ..._header(context, "Flexible"),
          _buildFlexible(context),
        ],
      ),
    );
  }

  Iterable<Widget> _header(BuildContext context, String text) {
    return [
      SizedBox(height: 20,),
      Text(
        text,
        style: Theme.of(context).textTheme.headline1,
      ),
    ];
  }

  Widget _buildExpanded(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          LabeledContainer(width: 100, color: Colors.green, text: "100", textColor: Colors.black), 
          Expanded(
              child:LabeledContainer(width: 0, color: Colors.purple, text: "The Remainder", textColor: Colors.white), ),
          LabeledContainer(width: 40, color: Colors.green, text: "40", textColor: Colors.black),
        ],
      ),
    );

  }

  Widget _buildFlexible(content) {
    return Container();
  }

  Widget _buildFooter(BuildContext context) {
    return Container();
  }


}

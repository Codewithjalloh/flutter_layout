import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextLayout extends StatelessWidget {
  const TextLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hello, World",
          style: GoogleFonts.leckerliOne(),
        ),
        Text(
          "Text can wrap with issues",
          style: Theme.of(context).textTheme.headline6,
        ),
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
            " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
        Divider(),
        RichText(
          text: TextSpan(
              text: "Flutter text is",
              style: TextStyle(fontSize: 22, color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: "really",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                  children: [
                    TextSpan(
                      text: "powerful.",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.double,
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ],
    );
  }
}

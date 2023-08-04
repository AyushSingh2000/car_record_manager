import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  const Features({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
            onTap: () {},
            child: Text(
              'Support',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Gloock',
                  fontSize: 24),
            )),
        GestureDetector(
            onTap: () {},
            child: Text(
              'Contact Us',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Gloock',
                  fontSize: 20),
            )),
        GestureDetector(
            onTap: () {},
            child: Text(
              'Feedback',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Gloock',
                  fontSize: 20),
            )),
        GestureDetector(
            onTap: () {},
            child: Text(
              'FAQ',
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Gloock',
                  fontSize: 20),
            )),
      ],
    );
  }
}

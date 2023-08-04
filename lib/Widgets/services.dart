import 'package:car_record_manager/Widgets/services_features.dart';
import 'package:flutter/material.dart';

import 'custom_buttons.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Services',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Gloock',
                  letterSpacing: 2),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(
            text: 'Manage Car Records',
            onPressed: () {
              Navigator.pushNamed(context, 'order');
            },
          ),
          SizedBox(
            height: 10,
          ),
          CustomButton(
            text: 'Book a Car Test',
            onPressed: () {
              Navigator.pushNamed(context, 'order');
            },
          ),
          SizedBox(
            height: 90,
          ),
          Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              child: Features()),
        ],
      ),
    );
  }
}

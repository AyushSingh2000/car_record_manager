import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

import '../Widgets/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 3.3,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(18),
                            child: Icon(Icons.menu_rounded,
                                color: Colors.cyanAccent),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'order');
                          },
                          child: Container(
                            padding: EdgeInsets.all(18),
                            child: Text(
                              'Car Records',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.cyanAccent),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 2),
                        child: Text(
                          'C.R.M',
                          style: TextStyle(
                              fontFamily: 'Gloock',
                              fontSize: 100,
                              color: Colors.cyanAccent),
                        )),
                    Container(
                        padding: const EdgeInsets.only(left: 15),
                        child: const Text(
                          '  CAR   RECORD   MANAGER',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Gloock',
                              color: Colors.cyanAccent),
                        )),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3.1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade300,
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(25),
                        child: Text(
                          'Keep track of Car records, mark them as RED or Green,on the basis of kms and how old is the car  .',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1),
                        )),
                    Text('Our Links',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1)),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlutterSocialButton(
                          onTap: () {},
                          mini: true, //just pass true for mini circle buttons
                          buttonType: ButtonType.whatsapp,
                          // Button type for different type buttons
                        ),
                        FlutterSocialButton(
                          onTap: () {},
                          mini: true, //just pass true for mini circle buttons
                          buttonType: ButtonType
                              .google, // Button type for different type buttons
                        ),
                        FlutterSocialButton(
                          onTap: () {},
                          mini: true, //just pass true for mini circle buttons
                          buttonType: ButtonType
                              .facebook, // Button type for different type buttons
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Services(),
            ],
          ),
        ),
      ),
    );
  }
}

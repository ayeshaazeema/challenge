import 'package:challenge/theme.dart';
import 'package:challenge/view/contact_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: blueColor,
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Stack(
            children: [
              Container(
                color: blueColor,
                child: SafeArea(
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 40.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/sabrina_carpenter.png',
                            width: 100.0,
                            height: 100.0,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Sabrina Carpenter',
                            style: whiteTextStyle.copyWith(
                                fontSize: 20.0, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 02.0,
                          ),
                          Text(
                            'Travel Freelancer',
                            style: lightBlueTextStyle.copyWith(
                                fontSize: 16.0, fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Friends',
                    style: darkBlueTextStyle.copyWith(
                        fontSize: 16.0, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  ContactTile(
                      contactImage: 'assets/images/joshuer.png',
                      contactName: 'Joshuer',
                      contactText: 'Sorry, you\'re not my ty...',
                      contactTime: 'Now'),
                  SizedBox(
                    height: 16.0,
                  ),
                  ContactTile(
                      contactImage: 'assets/images/gabriella.png',
                      contactName: 'Gabriella',
                      contactText: 'I saw it clearly and mig...',
                      contactTime: '2.30'),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Groups',
                    style: darkBlueTextStyle.copyWith(
                        fontSize: 16.0, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  ContactTile(
                      contactImage: 'assets/images/jakarta_fair.png',
                      contactName: 'Jakarta Fair',
                      contactText: 'Why does everyone ca...',
                      contactTime: '11.11'),
                  SizedBox(
                    height: 16.0,
                  ),
                  ContactTile(
                      contactImage: 'assets/images/angga.png',
                      contactName: 'Angga',
                      contactText: 'Here here we can go...',
                      contactTime: '7.11'),
                  SizedBox(
                    height: 16.0,
                  ),
                  ContactTile(
                      contactImage: 'assets/images/bentley.png',
                      contactName: 'Bentley',
                      contactText: 'The car which does not...',
                      contactTime: '7.11'),
                  SizedBox(
                    height: 30.0,
                  ),
                  Center(
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: const Icon(Icons.add),
                      backgroundColor: greenColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}

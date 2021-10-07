import 'package:challenge/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyChat extends StatelessWidget {
  final String chatImage;
  final String chatText;
  final String chatTime;

  const MyChat(
      {required this.chatImage,
      required this.chatText,
      required this.chatTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      child: Stack(
        children: [
          Positioned(
            child: Align(
              alignment: FractionalOffset.bottomRight,
              child: Image.asset(
                chatImage,
                width: 40.0,
                height: 40.0,
              ),
            ),
          ),
          Positioned(
            left: 50,
            child: Align(
              alignment: FractionalOffset.bottomRight,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            chatText,
                            style: darkGreyTextStyle.copyWith(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            chatTime,
                            style: darkGreyTextStyle.copyWith(
                                fontSize: 14.0, fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

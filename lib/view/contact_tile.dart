import 'package:challenge/theme.dart';
import 'package:challenge/view/chat_screen.dart';
import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  final String contactImage;
  final String contactName;
  final String contactText;
  final String contactTime;

  const ContactTile(
      {required this.contactImage,
      required this.contactName,
      required this.contactText,
      required this.contactTime});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChatScreen()));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            contactImage,
            width: 55.0,
            height: 55.0,
          ),
          SizedBox(
            width: 12.0,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contactName,
                style: darkBlueTextStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 2.0,
              ),
              Text(
                contactText,
                style: darkBlueTextStyle.copyWith(
                    fontSize: 14.0, fontWeight: FontWeight.w400),
              )
            ],
          )),
          Text(
            contactTime,
            style: darkGreyTextStyle.copyWith(
                fontSize: 14.0, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}

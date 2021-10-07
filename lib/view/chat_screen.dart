import 'package:challenge/theme.dart';
import 'package:challenge/view/chat_tile.dart';
import 'package:challenge/view/my_chat.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: chatBackgroundColor,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 115.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/jakarta_fair.png',
                          width: 55.0,
                          height: 55.0,
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jakarta Fair',
                              style: darkBlueTextStyle.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 2.0,
                            ),
                            Text(
                              '14,209 members',
                              style: darkBlueTextStyle.copyWith(
                                  fontSize: 14.0, fontWeight: FontWeight.w400),
                            )
                          ],
                        )),
                        FloatingActionButton(
                          onPressed: () {},
                          child: const Icon(Icons.phone),
                          backgroundColor: greenColor,
                          mini: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    ChatTile(
                        chatImage: 'assets/images/member_1.png',
                        chatText: 'How are ya guys?',
                        chatTime: '2.30'),
                    SizedBox(
                      height: 30.0,
                    ),
                    ChatTile(
                        chatImage: 'assets/images/member_2.png',
                        chatText: 'Fine here :p',
                        chatTime: '3.11'),
                    SizedBox(
                      height: 30.0,
                    ),
                    MyChat(
                        chatImage: 'assets/images/member_3.png',
                        chatText:
                            'Thinking about how to deal\nwith this client from Hell...',
                        chatTime: '22.08'),
                    SizedBox(
                      height: 30.0,
                    ),
                    ChatTile(
                        chatImage: 'assets/images/member_4.png',
                        chatText: 'Love them',
                        chatTime: '23.11')
                  ],
                ),
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.all(30.0),
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Type message ...',
                    style: lightGreyTextStyle.copyWith(
                        fontSize: 16.0, fontWeight: FontWeight.w300),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.send),
                    foregroundColor: darkBlueColor,
                    backgroundColor: darkWhiteColor,
                    mini: true,
                    elevation: 0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

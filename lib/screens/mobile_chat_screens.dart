import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutterr/widgets/chat_list.dart';

import '../constants/colors.dart';
import '../constants/info.dart';

class MobileChatScreens extends StatelessWidget {
  const MobileChatScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: mobileChatBoxColor,
              prefixIcon: const Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.emoji_emotions_outlined,
              color: Colors.grey,)),
              suffixIcon: Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.camera_alt,
                  color: Colors.grey,),
                  Icon(Icons.attach_file,
                  color: Colors.grey,),
                  Icon(Icons.money,
                  color: Colors.grey,),
                ],
              )),
              hintText: "Type a message",
              border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          contentPadding: const EdgeInsets.all(10)
           ),
            ),
        ],
      ),
    );
  }
}
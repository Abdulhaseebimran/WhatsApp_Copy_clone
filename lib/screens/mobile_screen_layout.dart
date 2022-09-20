import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutterr/constants/colors.dart';
import 'package:whatsapp_clone_flutterr/widgets/contact_list.dart';

class MobileScreensLayout extends StatelessWidget {
  const MobileScreensLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
     length: 3,
     child: Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 0,
        title: const Text("Whatsapp",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
        color: Colors.grey
        ),),
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.grey,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert, color: Colors.grey,))
        ],
        bottom: const TabBar(
          indicatorColor: tabColor,
          indicatorWeight: 4,
          labelColor: tabColor,
          unselectedLabelColor: Colors.grey,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          tabs: [
          Tab(text: "CHATS",),
          Tab(text: "STATUS",),
          Tab(text: "CALLS",)
        ])
      ),
      body: const ContactList(),
      floatingActionButton: FloatingActionButton(
      onPressed: () {}, 
      backgroundColor: tabColor,
      child: IconButton(onPressed: () {}, icon: const Icon(Icons.comment, color: Colors.white,)),
      ),
    ));
  }
}
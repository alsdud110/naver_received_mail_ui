import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_mail/screens/components/mail_body.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0.8,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "빋은메일함",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              CupertinoIcons.chat_bubble_2_fill,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 65, 65, 124),
        child: Container(),
      ),
      body: const MailBody(),
    );
  }
}

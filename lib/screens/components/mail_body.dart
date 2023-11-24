import 'package:flutter/material.dart';
import 'package:flutter_naver_mail/models/mail_list.dart';
import 'package:flutter_naver_mail/screens/components/mail_card.dart';
import 'package:flutter_naver_mail/screens/components/mail_header.dart';

class MailBody extends StatelessWidget {
  const MailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const MailHeader(),
        ...List.generate(
          mailList.length,
          (index) => MailCard(
            mailList: mailList[index],
          ),
        ),
      ],
    );
  }
}

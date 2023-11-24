import 'package:flutter/material.dart';
import 'package:flutter_naver_mail/models/mail_list.dart';

class MailCard extends StatelessWidget {
  final MailList mailList;
  const MailCard({super.key, required this.mailList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        margin: const EdgeInsets.only(bottom: 4),
        elevation: 0.5,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(mailList.from),
                  const Spacer(),
                  Text(mailList.date),
                  const Icon(Icons.star),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[400],
                    ),
                    child: const Center(
                      child: Text(
                        "TO",
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: Text(
                      mailList.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              Text(
                mailList.context,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

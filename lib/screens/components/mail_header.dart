import 'package:flutter/material.dart';

class MailHeader extends StatelessWidget {
  const MailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: 35,
          decoration: BoxDecoration(
              border: Border.all(
                width: 0.05,
              ),
              color: const Color.fromARGB(255, 215, 215, 218),
              borderRadius: BorderRadius.circular(1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.search_outlined,
                color: Colors.grey[150],
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                "메일 검색",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[150],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

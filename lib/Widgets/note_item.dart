import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFFCE7F),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.only(top: 24, left: 24, right: 16, bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            title: const Text(
              'Flutter Tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Build your career with Tharwat Samy',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
              ),
            ),
          ),
          const Text(
            'Sep 17,2024',
            style: TextStyle(
              color: Colors.black38,
            ),
          ),
        ],
      ),
    );
  }
}

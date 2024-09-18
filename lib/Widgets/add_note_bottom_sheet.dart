import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        children: [
          CustomTextField(),
        ],
      ),
    );
  }
}

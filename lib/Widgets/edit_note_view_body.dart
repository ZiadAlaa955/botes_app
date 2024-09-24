import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/custom_app_bar.dart';
import 'package:notes_app/Widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 15),
            child: CustomAppBar(title: 'Edit Note', icon: Icons.check),
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextFormField(hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(hint: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notes_app/views/widegts/custom_appbar.dart';
import 'package:notes_app/views/widegts/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          Padding(
            padding: EdgeInsets.only(top: 40, bottom: 16),
            child: CustomTextField(
              hint: 'Title',
            ),
          ),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
          ),
        ]));
  }
}

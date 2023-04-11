import 'package:flutter/material.dart';
import 'package:notes_app/views/widegts/custom_appbar.dart';
import 'package:notes_app/views/widegts/note_item.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          SizedBox(height: 10),
          NoteItem(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:notes_app/views/widegts/add_note_sheet.dart';
import 'package:notes_app/views/widegts/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return AddNoteSheet();
              },
            );
          },
          child: const Icon(Icons.add)),
      body: const NoteViewBody(),
    );
  }
}
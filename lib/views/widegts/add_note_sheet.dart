import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 40, left: 16, right: 16),
          child: CustomTextField(),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'custom_buttom.dart';
import 'custom_text_field.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(top: 40, bottom: 16),
          child: CustomTextField(
            hint: 'Title',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: CustomTextField(
            hint: 'Content',
            maxLines: 5,
          ),
        ),
        Spacer(),
        CustomButtom(),
      ],
    );
  }
}

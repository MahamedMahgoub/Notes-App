import 'package:flutter/material.dart';
import 'package:notes_app/views/widegts/custom_buttom.dart';
import 'package:notes_app/views/widegts/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 40, bottom: 16, left: 24, right: 24),
            child: CustomTextField(
              onSaved: (value) {
                title = value;
              },
              hint: 'Title',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomTextField(
              onSaved: (value) {
                subTitle = value;
              },
              hint: 'Content',
              maxLines: 5,
            ),
          ),
          const Spacer(),
          CustomButtom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}

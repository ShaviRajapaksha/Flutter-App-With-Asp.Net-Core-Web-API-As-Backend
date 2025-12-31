import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'model.dart';

class EditPage extends StatefulWidget {
  final User user;
  const EditPage({super.key, required this.user});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Page '),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(padding:  EdgeInsets.all(10.0),
      child: FormBuilder(
        child: Column(
          children: [
            FormBuilderTextField(
              name: 'name',
              initialValue: widget.user.name,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
          ],
        ),
      )
      )
    );
  }
}

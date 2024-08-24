import 'package:flutter/material.dart';

class TextFieldSection extends StatelessWidget {
  const TextFieldSection({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

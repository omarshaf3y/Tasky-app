import 'package:flutter/material.dart';

class ExperienceLevel extends StatelessWidget {
  const ExperienceLevel({super.key});

  @override
  Widget build(BuildContext context) {
    String? selectedExperienceLevel;
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      value: selectedExperienceLevel,
      items: const [
        DropdownMenuItem(value: 'Beginner', child: Text('Beginner')),
        DropdownMenuItem(value: 'Intermediate', child: Text('Intermediate')),
        DropdownMenuItem(value: 'Advanced', child: Text('Advanced')),
      ],
      onChanged: (value) {
        selectedExperienceLevel = value;
        // Handle change in selected experience level
      },
      hint: const Text('Choose experience Level'),
    );
  }
}

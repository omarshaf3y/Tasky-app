import 'package:flutter/material.dart';

class CountryDropdown extends StatelessWidget {
  final String selectedCountryCode;
  final ValueChanged<String> onChanged;

  const CountryDropdown({
    super.key,
    required this.selectedCountryCode,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedCountryCode,
      onChanged: (String? newValue) {
        onChanged(newValue!);
      },
      items: <String>['+20', '+1', '+44', '+91']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 13, bottom: 13),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/img/FlagofEgypt.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                const SizedBox(width: 8),
                Text(value),
              ],
            ),
          ),
        );
      }).toList(),
      underline: const SizedBox(),
    );
  }
}

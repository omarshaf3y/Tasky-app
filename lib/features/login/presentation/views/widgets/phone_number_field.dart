import 'package:flutter/material.dart';
import 'package:tasky/features/login/presentation/views/widgets/country_drop_down.dart';

class PhoneNumberField extends StatelessWidget {
  final String selectedCountryCode;
  final ValueChanged<String> onCountryCodeChanged;

  const PhoneNumberField({
    super.key,
    required this.selectedCountryCode,
    required this.onCountryCodeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        prefixIcon: CountryDropdown(
          selectedCountryCode: selectedCountryCode,
          onChanged: onCountryCodeChanged,
        ),
        hintText: '123 456-7890',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

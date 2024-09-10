
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/utils/dimensions.dart';

class custom_GenderDropdown extends StatelessWidget {
  final String currentValue;
  final List<String> options;
  final ValueChanged<String?> onChanged;

  custom_GenderDropdown({
    required this.currentValue,
    required this.options,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimensions.width380(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 13),
        child: DropdownButtonFormField<String>(

          value: currentValue,
          items: options.map((String option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Text(option),
            );
          }).toList(),
          onChanged: onChanged,

          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            filled: true,
            fillColor: Colors.grey[100],
            labelStyle: GoogleFonts.abel(
              fontSize: AppDimensions.font12(context),
              color: Colors.grey.shade400,
            ),
            labelText: 'Gender',
            hintText: "Gender",
            hintStyle: GoogleFonts.karla(
                  //fontSize: AppDimensions.font8(context),
                  color: Colors.grey.shade500,
                ),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}

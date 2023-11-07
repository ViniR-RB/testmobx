import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData? icon;
  final void Function(String)? onChanged;
  final String? erroText;
  const CustomTextField({
    super.key,
    this.icon,
    this.onChanged,
    this.label = "",
    this.erroText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            )
          ],
        ),
        TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            prefixIcon: Icon(icon),
            errorText: erroText,
            errorStyle: const TextStyle(fontSize: 16),
            border: const OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback onAboutPressed;

  const ActionButtons({super.key, required this.onAboutPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.edit),
              label: const Text('Edit'),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Flexible(
          flex: 1,
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: onAboutPressed,
              icon: const Icon(Icons.info),
              label: const Text('Tentang'),
            ),
          ),
        ),
      ],
    );
  }
}

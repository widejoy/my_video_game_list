import 'package:flutter/material.dart';

class GameItemProperty extends StatelessWidget {
  const GameItemProperty({super.key, required this.label, required this.icon});

  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 17,
            ),
            const SizedBox(
              width: 6,
            ),
            Expanded(
              child: Text(
                maxLines: 2,
                label,
              
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
     
      ],
    );
  }
}

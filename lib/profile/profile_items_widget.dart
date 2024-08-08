import 'package:flutter/material.dart';

class ProfileItems extends StatelessWidget {
  const ProfileItems({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Icon(icon), // "icon" is a unique icon for each
          const SizedBox(
            width: 20,
          ),
          Text(
            title, // this is text or icons' name uniqe for each
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}

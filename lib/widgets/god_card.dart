import 'package:flutter/material.dart';
import '../models/god.dart';

class GodCard extends StatelessWidget {
  final God god;
  final VoidCallback onTap;

  const GodCard({required this.god, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(god.image, width: 50, height: 50),
        title: Text(god.name),
        subtitle: Text(god.domain),
        onTap: onTap,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../models/god.dart';

class DetailScreen extends StatelessWidget {
  final God god;

  const DetailScreen({required this.god});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(god.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(god.image), // Alterado para usar imagem local
            SizedBox(height: 16),
            Text(
              god.domain,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(god.description),
          ],
        ),
      ),
    );
  }
}

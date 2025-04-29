import 'package:flutter/material.dart';
import '../models/god.dart';
import '../services/api_service.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<God>>(
      future: ApiService.fetchGods(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final gods = snapshot.data!;
          return Scaffold(
            appBar: AppBar(title: Text('Deuses da Mitologia Grega')),
            body: ListView.builder(
              itemCount: gods.length,
              itemBuilder: (context, index) {
                final god = gods[index];
                return ListTile(
                  leading: Image.asset(god.image,
                      width: 50, height: 50), // Alterado aqui também
                  title: Text(god.name),
                  subtitle: Text(god.domain),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailScreen(god: god),
                      ),
                    );
                  },
                );
              },
            ),
          );
        } else if (snapshot.hasError) {
          return Center(child: Text('Erro ao carregar dados.'));
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}

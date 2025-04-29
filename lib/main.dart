import 'package:flutter/material.dart';
// Firebase
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
// Páginas internas
import 'package:pokedex/firebase_options.dart';
import 'package:pokedex/pages/login_page.dart';
import 'screens/home_screen.dart'; // Se precisar dessa página em navegação futura

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCPWZ-xbasRaDExcUvYNb2-I1zPBcKizYg",
      authDomain: "pokedex-app-12f28.firebaseapp.com",
      projectId: "pokedex-app-12f28",
      storageBucket: "pokedex-app-12f28.firebasestorage.app",
      messagingSenderId: "147417047798",
      appId: "1:147417047798:web:815713eb19374ac7da02d7",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mitologia Grega',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}

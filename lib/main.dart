import 'package:flutter/material.dart';
// Firebase
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
// Páginas internas
import 'package:mitologia_grega_flutlab/firebase_options.dart';
import 'package:mitologia_grega_flutlab/pages/login_page.dart';
import 'package:greek_mitology/pages/login_page.dart';
import 'screens/home_screen.dart '; // Se precisar dessa página em navegação futura

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCc4jELS28TZnlgRyFktjXMtUtsjcjFKHs",
      authDomain: "greek-mitology.firebaseapp.com",
      projectId: "greek-mitology",
      storageBucket: "greek-mitology.firebasestorage.app",
      messagingSenderId: "991906751587",
      appId: "1:991906751587:web:0764dda9e36b9f74f10456",
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
      home: LoginPage(),
    );
  }
}

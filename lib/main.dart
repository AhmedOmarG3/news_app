
import 'package:flutter/material.dart';
import 'Screens/home_screen.dart';

void main() {
  runApp(const NewsApp());
    WidgetsFlutterBinding.ensureInitialized();
  
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

import 'package:final_iti_project/services/local/cash.dart';
import 'package:flutter/material.dart';

import 'screens/menue-screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Cash.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenueScreen(),
    );
  }
}

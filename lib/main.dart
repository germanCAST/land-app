import 'package:flutter/material.dart';
import 'package:land_app/features/countries/presentation/providers/home_provider.dart';
import 'package:provider/provider.dart';

import 'features/countries/presentation/pages/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => LoadingModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Land App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Countries'),
    );
  }
}

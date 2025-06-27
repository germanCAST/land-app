import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:land_app/features/countries/presentation/widgets/card_countries_list_screen.dart';
import 'package:land_app/features/countries/presentation/widgets/country_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(widget.title),
        ),
        titleTextStyle: TextStyle(fontSize: 40, color: Colors.black),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CountrySearchBar(),
          ),
          // CardCountries(),
        ],
      ),
    );
  }
}

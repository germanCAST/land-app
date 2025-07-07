import 'package:flutter/material.dart';
import 'package:land_app/features/countries/presentation/providers/home_provider.dart';
import 'package:land_app/features/countries/presentation/widgets/card_countries_list_screen.dart';
import 'package:land_app/features/countries/presentation/widgets/country_bar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      Provider.of<LoadingModel>(context, listen: false).delayLoading();
    });
  }

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
        body: Consumer<LoadingModel>(builder: (context, loadingModel, child) {
          if (loadingModel.isLoading) {
            return Center(
              child: Image.asset(
                'assets/LoaderCarga.webp',
                width: 100,
                height: 100,
              ),
            );
          } else {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CountrySearchBar(),
                ),
                Expanded(
                  child: CardCountries(),
                ),
              ],
            );
          }
        }));
  }
}

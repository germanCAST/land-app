import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CardCountries extends ConsumerStatefulWidget {
  const CardCountries({super.key});

  @override
  ConsumerState<CardCountries> createState() => _CardCountriesState();
}

class _CardCountriesState extends ConsumerState<CardCountries> {
  @override
  void initState() {
    super.initState();
    debugPrint('hola');
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint('Adios');
  }

  // Lista de datos para los cuadros
  final List<Map<String, dynamic>> countryCards = [
    {
      'title': 'Guatemala',
      'subtitle': 'Capital: Ciudad de Guatemala',
      'color': Colors.white,
    },
    {
      'title': 'México',
      'subtitle': 'Capital: Ciudad de México',
      'color': Colors.white,
    },
    {
      'title': 'El Salvador',
      'subtitle': 'Capital: San Salvador',
      'color': Colors.white,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        child: Column(
          children: countryCards.map((country) {
            return Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: country['color'],
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    color: Colors.amber,
                    width: 100,
                    height: 80,
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        country['title'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        country['subtitle'],
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

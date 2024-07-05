import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'APLICACION BLOG';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body:SingleChildScrollView(
          child: Column(
            children: [
              TitleSection(name: 'Quito Ecuador', location: 'Pichincha'),
              TitleSection(name: 'Latacunga', location: 'Cotopaxi'),
               TextSection(description: 'Descripción de la ciudad de Quito.'),
              ButtonSection(),
              TitleSection(name: 'Baños', location: 'Tunguragua'),
               TextSection(description: 'Descripción del Tunguragua.'),
              ButtonSection(),
              TitleSection(name: 'Cuenca', location: 'Cuenca'),
               TextSection(description: 'Descripción de de la cuidad de Cuenca.'),
              ButtonSection(),
              TitleSection(name: 'Atuntaki', location: 'Pichincha'),
              TextSection(description: 'Descripción de Pichincha.'),
              ButtonSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key? key,
    required this.name,
    required this.location,
  }) : super(key: key);

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: const Color.fromARGB(255, 136, 54, 244),
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'LLAMAR',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'RUTA',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'COMPARTIR',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    Key? key,
    required this.color,
    required this.icon,
    required this.label,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

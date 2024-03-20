import 'package:flutter/material.dart';
import 'package:garcia0359/pantallas0359/panel0359/panel_pantalla0359.dart';

void main() => runApp(const MiAppLibreria0359());

class MiAppLibreria0359 extends StatelessWidget {
  const MiAppLibreria0359({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Libreria Garcia0359",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
          useMaterial3: true),
      home: const PanelPantalla0359(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:melendez/pantallas_1223/panel_1223/witgets_1223/panel_pantallas_1223.dart';

void main() => runApp(MiappTenis());

class MiappTenis extends StatelessWidget {
  const MiappTenis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Melendez zapateria 1223",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
          useMaterial3: true),
      home: Panelpantalla_1223(),
    );
  } //
}

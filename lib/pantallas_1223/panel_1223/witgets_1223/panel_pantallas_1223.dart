import 'package:flutter/material.dart';

import 'iproducs_1223.dart';

class Panelpantalla_1223 extends StatelessWidget {
  const Panelpantalla_1223({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffd97c1a),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/EFMMelendez/img_Flutterflow-IOS_6j/main/flutterflow_melendez/tienda.png"),
            ),
          ),
        ],
        title: Text(
          'panel melendez1223',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 5,
                  ),
                ]),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Buscar",
                hintStyle:
                    TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.brown,
                ),
              ),
            ),
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                //borderRadius: BorderRadius.circular(10.0)
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/EFMMelendez/img_Flutterflow-IOS_6j/main/flutterflow_melendez/zapateria.png"))),
          ),
          ListTile(
            title: Text("Top tenis"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_outlined),
          ),
          Expanded(
              child: GridView.count(
            padding: EdgeInsets.all(15),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            children: [for (int i = 1; i <= 10; i++) const Iproducs_1223()],
          ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:garcia0359/pantallas0359/panel0359/itemlibros.dart';

class PanelPantalla0359 extends StatelessWidget {
  const PanelPantalla0359({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff4153bc),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://raw.githubusercontent.com/GarciaJ128/Img_IOS/main/iconlibreria.png"),
              ),
            )
          ],
          title: const Text('Libreria Garcia0359',
              style: TextStyle(color: Color(0xffffffff))),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color(0xff4b5fd2),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 5),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.1),
                        spreadRadius: 5,
                        blurRadius: 5)
                  ]),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Buscar...",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w300, color: Colors.white),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
              ),
            ),
            Container(
              height: 180,
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://raw.githubusercontent.com/GarciaJ128/Img_IOS/main/biblioteca_fondo.jpg")),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
            ListTile(
              title: const Text("Mejores libros"),
              titleTextStyle: Theme.of(context).textTheme.titleLarge,
              trailing: const Icon(Icons.filter_list_outlined),
            ),
            Expanded(
              child: GridView.count(
                padding: const EdgeInsets.all(15),
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 15,
                children: [for (int i = 1; i <= 10; i++) const Itemlibros()],
              ),
            )
          ],
        ));
  }
}

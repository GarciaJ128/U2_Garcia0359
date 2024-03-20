import 'package:flutter/material.dart';

class Itemlibros extends StatelessWidget {
  const Itemlibros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Theme.of(context).colorScheme.primary.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 5)
          ]),
      child: Column(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://raw.githubusercontent.com/GarciaJ128/Img_IOS/main/jardin-mariposas.png"),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Nuestros Libros",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: List.generate(
                5,
                (index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 18,
                    )),
          )
        ],
      ),
    );
  }
}

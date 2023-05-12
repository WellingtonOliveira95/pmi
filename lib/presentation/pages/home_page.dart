import 'package:cardapio/app/app.dart';
import 'package:cardapio/data/lanche_repository.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final lanches = loadLanches();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cardápio"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: lanches.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(lanches[index].nome),
              Text(moeda.format(lanches[index].preco)),
            ],
          ),
        ),
      ),
    );
  }
}

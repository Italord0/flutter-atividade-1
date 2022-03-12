import 'package:flutter/material.dart';
import 'package:hello_world/item.dart';
import 'package:hello_world/item_widget.dart';
import 'package:hello_world/utils.dart';
void main() {

  final List<Item> entries = List.generate(1000, (index) => Item(
      Utils.generateRandomStrings(30),
      Utils.generateRandomEnabledState()));

  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Exercício 4'),
            backgroundColor: Colors.green,
          ),
          body: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemWidget(entries[index]);
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          )
        ),
      )
  );
}


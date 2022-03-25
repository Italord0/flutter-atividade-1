import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/data/item.dart';
import 'package:hello_world/domain/repository/item_repository.dart';
import 'package:hello_world/inject/inject.dart';
import 'package:hello_world/item_widget.dart';
void main()  {
  configureDependencies();

  final itemRepository = getIt<ItemRepository>();
  final data = itemRepository.get1000Items();

  runApp(MyApp(data));
}

class MyApp extends StatefulWidget {

  List<Item> itemList;

  MyApp(this.itemList);

  @override
  State<StatefulWidget> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp>{

  @override
  Widget build (BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Atividade 1'),
            backgroundColor: Colors.green,
          ),
          body: Column(
            children: [
              CupertinoButton(child: Text("Resetar"), onPressed: () {
                setState(() {
                  for (var element in widget.itemList) {
                      element.enabled = element.originalValue;
                  }
                });
              }),
              Expanded(child:
              ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: widget.itemList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ItemWidget(widget.itemList[index]);
                },
                separatorBuilder: (BuildContext context, int index) => const Divider(),
              ))
            ],
          )
      ),
    );
  }

}

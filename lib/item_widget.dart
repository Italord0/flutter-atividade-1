import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/data/item.dart';

class ItemWidget extends StatefulWidget {

  final Item item;

  ItemWidget(this.item);

  @override
  _ItemWidgetState createState() => _ItemWidgetState();

}

class _ItemWidgetState extends State<ItemWidget>{

  @override
  Widget build (BuildContext context) {
    return SizedBox(
      height: 50,
      child: Container(
        color: widget.item.enabled ? Colors.black : Colors.white,
        child: Center(child: Row(
          children: [
            Text(widget.item.content,style: TextStyle(
                color: widget.item.enabled ? Colors.white : Colors.black
            )),
            CupertinoSwitch(value: widget.item.enabled, onChanged: (bool value) {
              setState(() {
                widget.item.enabled = value;
              });
            })
          ],
        )),
      )
    );
  }
}
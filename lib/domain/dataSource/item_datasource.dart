import 'package:hello_world/data/item.dart';

abstract class ItemDataSource{
  List<Item> getItems(int numberOfItems);
}
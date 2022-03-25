import 'package:hello_world/data/item.dart';
import 'package:hello_world/domain/dataSource/item_datasource.dart';
import 'package:hello_world/utils.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ItemDataSource)
class ItemDataSourceImpl implements ItemDataSource{

  @override
  List<Item> getItems(int numberOfItems) {
    final List<Item> entries = List.generate(1000, (index) => Item(
        Utils.generateRandomStrings(30),
        Utils.generateRandomEnabledState()));
    return entries;
  }

}
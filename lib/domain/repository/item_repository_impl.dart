import 'package:hello_world/data/item.dart';
import 'package:hello_world/domain/dataSource/item_datasource.dart';
import 'package:hello_world/domain/repository/item_repository.dart';
import 'package:hello_world/inject/inject.dart';
import 'package:injectable/injectable.dart';

@Injectable( as: ItemRepository)
class ItemRepositoryImpl implements ItemRepository{

  @override
  List<Item> get1000Items() {
    return getIt<ItemDataSource>().getItems(1000);
  }

}
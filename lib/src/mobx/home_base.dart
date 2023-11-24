import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home_base.g.dart';

class HomeBase = _HomeBase with _$HomeBase;

abstract class _HomeBase with Store {

  _HomeBase() {
    _fecthLocalStorageData();
  }

  @observable
  ObservableList<String> listItems = ObservableList<String>.of([]);

  @action
  void addNewItem({required String item}) {
    listItems.add(item);
    _saveOnLocalStore();
  }

  @action
  void removeItem({required String item}) {
    listItems.remove(item);
    _saveOnLocalStore();
  }

  @action
  void updateItem({required String oldItemValue, required String newItemValue}) {
    final index = listItems.indexWhere((element) => element == oldItemValue);
    listItems[index] = newItemValue;
    _saveOnLocalStore();
  }

  void _saveOnLocalStore() async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setStringList('items', listItems.toList());
  }

  void _fecthLocalStorageData() async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    listItems.addAll(sharedPreferences.getStringList('items') ?? []);
  }

}
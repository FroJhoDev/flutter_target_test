// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_base.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeBase on _HomeBase, Store {
  late final _$listItemsAtom =
      Atom(name: '_HomeBase.listItems', context: context);

  @override
  ObservableList<String> get listItems {
    _$listItemsAtom.reportRead();
    return super.listItems;
  }

  @override
  set listItems(ObservableList<String> value) {
    _$listItemsAtom.reportWrite(value, super.listItems, () {
      super.listItems = value;
    });
  }

  late final _$_HomeBaseActionController =
      ActionController(name: '_HomeBase', context: context);

  @override
  void addNewItem({required String item}) {
    final _$actionInfo =
        _$_HomeBaseActionController.startAction(name: '_HomeBase.addNewItem');
    try {
      return super.addNewItem(item: item);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeItem({required String item}) {
    final _$actionInfo =
        _$_HomeBaseActionController.startAction(name: '_HomeBase.removeItem');
    try {
      return super.removeItem(item: item);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateItem(
      {required String oldItemValue, required String newItemValue}) {
    final _$actionInfo =
        _$_HomeBaseActionController.startAction(name: '_HomeBase.updateItem');
    try {
      return super
          .updateItem(oldItemValue: oldItemValue, newItemValue: newItemValue);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listItems: ${listItems}
    ''';
  }
}

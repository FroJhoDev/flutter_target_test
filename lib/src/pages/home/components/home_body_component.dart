import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:target_test_flutter/src/core/helpers/size_extensions.dart';
import 'package:target_test_flutter/src/core/styles/text_styles.dart';

import '../../../mobx/home_base.dart';

import 'home_edit_alert.dart';
import 'home_remove_alert.dart';
import 'home_input_component.dart';
import 'home_empty_list_menssage_component.dart';

class HomeBodyComponent extends StatelessWidget {
  HomeBodyComponent({super.key});

  final HomeBase _homeBase = HomeBase();
  final TextEditingController _textEditFieldController = TextEditingController();
  final TextEditingController _textNewFieldController = TextEditingController();
  final FocusNode _textFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: context.percentWidth(0.11)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: context.percentHeight(0.4),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: _homeBase.listItems.isNotEmpty
                    ? ListView.separated(
                        itemCount: _homeBase.listItems.length,
                        separatorBuilder: (context, index) => const Divider(),
                        itemBuilder: (context, index) {
                          return ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                            title: Text(
                              _homeBase.listItems[index],
                              textAlign: TextAlign.center,
                              style: context.textStyles.listTileText,
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {

                                    _textEditFieldController.text = _homeBase.listItems[index];

                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return HomeEditAlert(
                                          textEditFieldController: _textEditFieldController, 
                                          onConfirmPressed: () {
                                            _homeBase.updateItem(oldItemValue: _homeBase.listItems[index], newItemValue: _textEditFieldController.text);
                                            Navigator.pop(context);
                                        });
                                      },
                                    );

                                  },
                                  icon: const Icon(Icons.edit, size: 34.0),
                                ),
                                const SizedBox(width: 5.0),
                                IconButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return HomeRemoveAlert(
                                          onConfirmPressed: () {
                                            _homeBase.removeItem(item:_homeBase.listItems[index]);
                                            Navigator.pop(context);
                                          },
                                        );
                                      },
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.close,
                                    color: Colors.red,
                                    size: 34.0,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      )
                    : const HomeEmptyListMenssageComponent(),
              ),
              const SizedBox(height: 40.0),
              HomeInputComponent(
                textEditingController: _textNewFieldController,
                textFocusNode: _textFocusNode,
                onSubmitted: (inputValue) {
                  if (inputValue.isNotEmpty) {
                    _homeBase.addNewItem(item: inputValue);
                    _textNewFieldController.clear();
                    _textFocusNode.requestFocus();
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

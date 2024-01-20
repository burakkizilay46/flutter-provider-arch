// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider_arch/core/base/provider/base_provider.dart';

class SampleProvider extends BaseProvider {
  @override
  void init() {
    // TODO: implement init
  }

  String _myText = 'first string';
  String get myText => _myText;

  Future<void> changeText() async {
    _myText = 'first change';
    notifyListeners();
    await Future.delayed(Duration(seconds: 2));
    _myText = 'second change';
    notifyListeners();
  }

  void resetText() {
    _myText = 'resetted string';
    notifyListeners();
  }

  @override
  void setContext(BuildContext context) => this.context = context;
}

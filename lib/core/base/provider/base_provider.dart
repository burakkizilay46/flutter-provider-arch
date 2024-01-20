import 'package:flutter/material.dart';

abstract class BaseProvider extends ChangeNotifier {
  BuildContext? context;
  void setContext(BuildContext context);
  void init();
}

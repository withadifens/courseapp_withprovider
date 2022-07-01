import 'dart:collection';

import 'package:flutter/cupertino.dart';

class DoneModuleProvider with ChangeNotifier {
  Set doneModuleList = {};

  void addToBookmark(String item) {
    doneModuleList.add(item);
    notifyListeners();
  }

  void removeFromBookmark(String item) {
    doneModuleList.remove(item);
    notifyListeners();
  }
}

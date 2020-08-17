
import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier {

   String display_text = 'This is Flutter';
  
  void changeDisplayText() {
    display_text = 'Flutter is Amazing';
    notifyListeners();
  }

}
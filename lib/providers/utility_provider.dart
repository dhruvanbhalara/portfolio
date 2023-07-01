import 'package:flutter/material.dart';

class UtilityProvider with ChangeNotifier {
  ScrollController scrollController = ScrollController();
  double cardElevation = 30;

  double getCardElevation() => cardElevation;

  ScrollController getScrollController() => scrollController;

  void changeElevation(double elevation) {
    cardElevation = elevation;
    notifyListeners();
  }
}

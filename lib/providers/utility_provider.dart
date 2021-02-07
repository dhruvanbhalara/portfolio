import 'package:flutter/material.dart';

class UtilityProvider with ChangeNotifier {
  ScrollController scrollController = ScrollController();
  double cardElevation = 30;

  getCardElevation() => cardElevation;

  getScrollController() => scrollController;

  changeElevation(double elevation) {
    cardElevation = elevation;
    notifyListeners();
  }
}

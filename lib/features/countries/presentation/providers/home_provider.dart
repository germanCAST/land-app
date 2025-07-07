import 'dart:async';
import 'package:flutter/material.dart';

class LoadingModel with ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void startLoading() {
    _isLoading = true;
    notifyListeners();
  }

  void stopLoading() {
    _isLoading = false;
    notifyListeners();
  }

  Future<void> delayLoading() async {
    startLoading();
    await Future.delayed(const Duration(seconds: 5));
    stopLoading();
  }
}

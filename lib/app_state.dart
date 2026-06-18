import 'package:flutter/material.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _searchQuery = '';
  String get searchQuery => _searchQuery;
  set searchQuery(String value) {
    _searchQuery = value;
  }

  String _filterDifficulty = 'All';
  String get filterDifficulty => _filterDifficulty;
  set filterDifficulty(String value) {
    _filterDifficulty = value;
  }

  String _venueCategoryFilter = 'All';
  String get venueCategoryFilter => _venueCategoryFilter;
  set venueCategoryFilter(String value) {
    _venueCategoryFilter = value;
  }

  bool _isOfflineMode = false;
  bool get isOfflineMode => _isOfflineMode;
  set isOfflineMode(bool value) {
    _isOfflineMode = value;
  }

  dynamic _cachedWeather = jsonDecode('{}');
  dynamic get cachedWeather => _cachedWeather;
  set cachedWeather(dynamic value) {
    _cachedWeather = value;
  }
}

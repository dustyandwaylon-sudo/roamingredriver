import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  late SharedPreferences _prefs;

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    _prefs = await SharedPreferences.getInstance();
    _recentSearches = _prefs.getStringList('recentSearches') ?? [];
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _searchQuery = '';
  String get searchQuery => _searchQuery;
  set searchQuery(String value) {
    _searchQuery = value;
    notifyListeners();
  }

  String _filterDifficulty = 'All';
  String get filterDifficulty => _filterDifficulty;
  set filterDifficulty(String value) {
    _filterDifficulty = value;
    notifyListeners();
  }

  String _venueCategoryFilter = 'All';
  String get venueCategoryFilter => _venueCategoryFilter;
  set venueCategoryFilter(String value) {
    _venueCategoryFilter = value;
    notifyListeners();
  }

  bool _isOfflineMode = false;
  bool get isOfflineMode => _isOfflineMode;
  set isOfflineMode(bool value) {
    _isOfflineMode = value;
    notifyListeners();
  }

  dynamic _cachedWeather = jsonDecode('{}');
  dynamic get cachedWeather => _cachedWeather;
  set cachedWeather(dynamic value) {
    _cachedWeather = value;
    notifyListeners();
  }

  List<String> _recentSearches = [];
  List<String> get recentSearches => List.unmodifiable(_recentSearches);

  void addRecentSearch(String value) {
    final normalizedValue = value.trim();
    if (normalizedValue.isEmpty) {
      return;
    }

    _recentSearches.remove(normalizedValue);
    _recentSearches.insert(0, normalizedValue);
    if (_recentSearches.length > 5) {
      _recentSearches.removeRange(5, _recentSearches.length);
    }
    _prefs.setStringList('recentSearches', _recentSearches);
    notifyListeners();
  }

  void clearRecentSearches() {
    _recentSearches.clear();
    _prefs.setStringList('recentSearches', _recentSearches);
    notifyListeners();
  }
}

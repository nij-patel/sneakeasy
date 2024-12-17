import 'package:flutter/material.dart';
import '../models/filters_model.dart';
import '../data/shoe_data.dart';
import 'home_page_view_model.dart';

class FiltersViewModel extends ChangeNotifier {
  final Filters _filters;
  late List<String> availableColors;
  late List<String> availableBrands;
  late List<String> availableMaterials;
  late List<String> availableStyles;

  FiltersViewModel(this._filters) {
    _initializeAvailableFilters();
  }

  void _initializeAvailableFilters() {
    // Extract unique values from shoe data
    availableColors = _getUniqueValues((shoe) => shoe.primaryColor);
    availableBrands = _getUniqueValues((shoe) => shoe.brand);
    availableMaterials = _getUniqueValues((shoe) => shoe.material);
    availableStyles = _getUniqueValues((shoe) => shoe.material); // Using material as style
  }

  List<String> _getUniqueValues(String Function(dynamic shoe) getValue) {
    return allShoesData
        .map(getValue)
        .toSet()
        .toList()
        .where((value) => value.isNotEmpty)
        .toList()
      ..sort();
  }

  void applyFilters(HomePageViewModel homePageViewModel) {
    // Applies the filter criteria on the home page view model
    homePageViewModel.getFilteredShoes();
  }

  void updateCriteria(String field, dynamic value) {
    switch (field) {
      case 'minPrice':
        _filters.updateMinPrice(value);
      case 'maxPrice':
        _filters.updateMaxPrice(value);
      case 'brands':
        _filters.updateBrands(value);
      case 'colors':
        _filters.updateColors(value);
      case 'style':
        _filters.updateStyle(value);
    }
    notifyListeners();
  }

  void clearFilters() {
    _filters.resetFilters();
    notifyListeners();
  }

  Filters get filters => _filters;

  List<String> get selectedBrands => _filters.brands;
  List<String> get selectedColors => _filters.colors;
  String get selectedStyle => _filters.style;
  double get selectedMinPrice => _filters.minPrice;
  double get selectedMaxPrice => _filters.maxPrice;
}

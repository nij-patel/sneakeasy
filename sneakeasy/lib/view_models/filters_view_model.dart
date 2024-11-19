import 'package:flutter/material.dart';

import '../models/filters_model.dart';
import 'home_page_view_model.dart';

class FiltersViewModel extends ChangeNotifier{
  final Filters _filters;

  // Predefined options for filters
  final List<String> availableColors = ['Red', 'Blue', 'Green', 'Black'];
  final List<String> availableBrands = ['Nike', 'Adidas', 'Puma', 'Reebok'];
  final List<String> availableMaterials = ['Leather', 'Mesh', 'Canvas'];
  final List<String> availableTypes = ['Running', 'Basketball', 'Casual'];
  final List<String> availableSizes = ['7', '8', '9', '10', '11'];
  final List<String> availableStyles = ['Sporty', 'Modern', 'Retro', 'Classic']; 


  FiltersViewModel(this._filters);

  void applyFilters(HomePageViewModel homePageViewModel) {
    // Applies the filter criteria on the home page view model
    homePageViewModel.getFilteredShoes();
  }

  void updateCriteria(String field, dynamic value) {
    switch (field) {
      case 'minPrice':
        _filters.updateMinPrice(value);
        break;
      case 'maxPrice':
        _filters.updateMaxPrice(value);
        break;
      case 'brands':
        _filters.updateBrands(value);
        break;
      case 'colors':
        _filters.updateColors(value);
        break;
      case 'style':
        _filters.updateStyle(value);
        break;
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

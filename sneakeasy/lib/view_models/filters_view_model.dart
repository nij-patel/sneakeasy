import '../models/filters_model.dart';
import 'home_page_view_model.dart';

class FiltersViewModel {
  final Filters _filters;

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
  }

  void clearFilters() {
    _filters.resetFilters();
  }

  Filters get filters => _filters;
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_models/filters_view_model.dart';  // Import your FiltersViewModel
import '../view_models/home_page_view_model.dart'; // Import your HomePageViewModel




import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_models/filters_view_model.dart';  // Import your FiltersViewModel
import '../view_models/home_page_view_model.dart'; // Import your HomePageViewModel

class FilterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final filtersViewModel = Provider.of<FiltersViewModel>(context);
    final homePageViewModel = Provider.of<HomePageViewModel>(context);

    // Get Previously Selected
    List<String> selectedColors = filtersViewModel.selectedColors;
    List<String> selectedBrands = filtersViewModel.selectedBrands;
    String selectedStyle = filtersViewModel.selectedStyle;
    double selectedMinPrice = filtersViewModel.selectedMinPrice ?? 0.0;
    double selectedMaxPrice = filtersViewModel.selectedMaxPrice ?? 1000.0; // Adjust max price as needed

    // Ensure the values are within bounds for the slider
    selectedMinPrice = selectedMinPrice.clamp(0.0, 1000.0);
    selectedMaxPrice = selectedMaxPrice.clamp(selectedMinPrice, 1000.0);

    return Scaffold(
      appBar: AppBar(
        title: Text('Filter Sneakers'),
        actions: [
          IconButton(
            icon: Icon(Icons.clear_all),
            onPressed: () {
              filtersViewModel.clearFilters();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Colors Filter
            _buildMultiSelectFilter(
              label: 'Colors',
              options: filtersViewModel.availableColors,
              selectedItems: selectedColors,
              onChanged: (selected) {
                filtersViewModel.updateCriteria('colors', selected);
              },
            ),
            // Brands Filter
            _buildMultiSelectFilter(
              label: 'Brands',
              options: filtersViewModel.availableBrands,
              selectedItems: selectedBrands,
              onChanged: (selected) {
                filtersViewModel.updateCriteria('brands', selected);
              },
            ),
            // Style Filter
            _buildSingleSelectFilter(
              label: 'Style',
              options: filtersViewModel.availableStyles,
              selectedItem: selectedStyle,
              onChanged: (selected) {
                filtersViewModel.updateCriteria('style', selected);
              },
            ),
            // Price Filter
            Text('Price Range'),
            RangeSlider(
              values: RangeValues(selectedMinPrice, selectedMaxPrice),
              min: 0,
              max: 1000,
              divisions: 100,
              labels: RangeLabels(
                '\$${selectedMinPrice.toStringAsFixed(2)}',
                '\$${selectedMaxPrice.toStringAsFixed(2)}',
              ),
              onChanged: (values) {
                filtersViewModel.updateCriteria("minPrice", values.start);
                filtersViewModel.updateCriteria("maxPrice", values.end);
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                filtersViewModel.applyFilters(homePageViewModel);
                Navigator.pop(context);
              },
              child: Text('Apply Filters'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMultiSelectFilter({
    required String label,
    required List<String> options,
    required List<String> selectedItems,
    required Function(List<String>) onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        Wrap(
          spacing: 8,
          children: options.map((option) {
            return ChoiceChip(
              label: Text(option),
              selected: selectedItems.contains(option),
              onSelected: (isSelected) {
                if (isSelected) {
                  selectedItems.add(option);
                } else {
                  selectedItems.remove(option);
                }
                onChanged(selectedItems);
              },
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildSingleSelectFilter({
    required String label,
    required List<String> options,
    required String? selectedItem,
    required Function(String?) onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        DropdownButton<String>(
          value: options.contains(selectedItem) ? selectedItem : null, // Check if selectedItem is in options
          onChanged: (newValue) {
            onChanged(newValue);
          },
          hint: Text('Select $label'),
          items: options.map((option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Text(option),
            );
          }).toList(),
        ),
      ],
    );
  }
}
















// class FilterView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Accessing the FiltersViewModel and HomePageViewModel via Provider
//     final filtersViewModel = Provider.of<FiltersViewModel>(context);
//     final homePageViewModel = Provider.of<HomePageViewModel>(context);

//     // Use the filters view model data and watch for updates
//     List<String> selectedColors = filtersViewModel.selectedColors;
//     List<String> selectedBrands = filtersViewModel.selectedBrands;
//     String? selectedSize = "";
//     String? selectedMaterial = "";
//     String? selectedType = "";
//     double? selectedMinPrice = filtersViewModel.selectedMinPrice;
//     double? selectedMaxPrice = filtersViewModel.selectedMaxPrice;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Filter Sneakers'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.clear_all),
//             onPressed: () {
//               filtersViewModel.clearFilters(); // Clear filters on press
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // Colors Filter
//             _buildMultiSelectFilter(
//               label: 'Colors',
//               options: filtersViewModel.availableColors,
//               selectedItems: selectedColors,
//               onChanged: (selected) {
//                 filtersViewModel.updateCriteria('colors', selected);
//               },
//             ),
//             // Brands Filter
//             _buildMultiSelectFilter(
//               label: 'Brands',
//               options: filtersViewModel.availableBrands,
//               selectedItems: selectedBrands,
//               onChanged: (selected) {
//                 filtersViewModel.updateCriteria('brands', selected);
//               },
//             ),
//             // Size Filter
//             _buildSingleSelectFilter(
//               label: 'Size',
//               options: filtersViewModel.availableSizes,
//               selectedItem: selectedSize,
//               onChanged: (selected) {
//                 filtersViewModel.updateCriteria('size', selected);
//               },
//             ),
//             // Material Filter
//             _buildSingleSelectFilter(
//               label: 'Material',
//               options: filtersViewModel.availableMaterials,
//               selectedItem: selectedMaterial,
//               onChanged: (selected) {
//                 filtersViewModel.updateCriteria('material', selected);
//               },
//             ),
//             // Type Filter
//             _buildSingleSelectFilter(
//               label: 'Type',
//               options: filtersViewModel.availableTypes,
//               selectedItem: selectedType,
//               onChanged: (selected) {
//                 filtersViewModel.updateCriteria('style', selected);
//               },
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 filtersViewModel.applyFilters(homePageViewModel);
//                 Navigator.pop(context);
//               },
//               child: Text('Apply Filters'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Multi-select filter widget (for Colors, Brands)
//   Widget _buildMultiSelectFilter({
//     required String label,
//     required List<String> options,
//     required List<String> selectedItems,
//     required Function(List<String>) onChanged,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//         Wrap(
//           spacing: 8,
//           children: options.map((option) {
//             return ChoiceChip(
//               label: Text(option),
//               selected: selectedItems.contains(option),
//               onSelected: (isSelected) {
//                 if (isSelected) {
//                   selectedItems.add(option);
//                 } else {
//                   selectedItems.remove(option);
//                 }
//                 onChanged(selectedItems); // Update the selected values
//               },
//             );
//           }).toList(),
//         ),
//       ],
//     );
//   }

//   // Single-select filter widget (for Size, Material, Type)
//   Widget _buildSingleSelectFilter({
//     required String label,
//     required List<String> options,
//     required String? selectedItem,
//     required Function(String?) onChanged,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//         DropdownButton<String>(
//           value: selectedItem,
//           onChanged: (newValue) {
//             onChanged(newValue); // Update the selected value
//           },
//           hint: Text('Select $label'),
//           items: options.map((option) {
//             return DropdownMenuItem<String>(
//               value: option,
//               child: Text(option),
//             );
//           }).toList(),
//         ),
//       ],
//     );
//   }
// }







































// class FilterView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Accessing the FiltersViewModel and HomePageViewModel via Provider
//     final filtersViewModel = Provider.of<FiltersViewModel>(context);
//     final homePageViewModel = Provider.of<HomePageViewModel>(context);

//     // Use the filters view model data and watch for updates
//     List<String> selectedColors = filtersViewModel.selectedColors;
//     List<String> selectedBrands = filtersViewModel.selectedBrands;
//     String? selectedStyle = filtersViewModel.selectedStyle;
//     double? selectedMinPrice = filtersViewModel.selectedMinPrice;
//     double? selectedMaxPrice = filtersViewModel.selectedMaxPrice;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Filter Sneakers'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.clear_all),
//             onPressed: () {
//               filtersViewModel.clearFilters(); // Clear filters on press
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // Colors Filter
//             _buildMultiSelectFilter(
//               label: 'Colors',
//               options: filtersViewModel.availableColors,
//               selectedItems: selectedColors,
//               onChanged: (selected) {
//                 filtersViewModel.updateCriteria('colors', selected);
//               },
//             ),
//             // Brands Filter
//             _buildMultiSelectFilter(
//               label: 'Brands',
//               options: filtersViewModel.availableBrands,
//               selectedItems: selectedBrands,
//               onChanged: (selected) {
//                 filtersViewModel.updateCriteria('brands', selected);
//               },
//             ),
//             // Style Filter
//             _buildSingleSelectFilter(
//               label: 'Style',
//               options: filtersViewModel.availableStyles,
//               selectedItem: selectedStyle,
//               onChanged: (selected) {
//                 filtersViewModel.updateCriteria('style', selected);
//               },
//             ),
//             // Min Price Filter
//             _buildPriceFilter(
//               label: 'Min Price',
//               initialPrice: selectedMinPrice,
//               onChanged: (price) {
//                 filtersViewModel.updateCriteria('minPrice', price);
//               },
//             ),
//             // Max Price Filter
//             _buildPriceFilter(
//               label: 'Max Price',
//               initialPrice: selectedMaxPrice,
//               onChanged: (price) {
//                 filtersViewModel.updateCriteria('maxPrice', price);
//               },
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 filtersViewModel.applyFilters(homePageViewModel);
//                 Navigator.pop(context);
//               },
//               child: Text('Apply Filters'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Multi-select filter widget (for Colors, Brands)
//   Widget _buildMultiSelectFilter({
//     required String label,
//     required List<String> options,
//     required List<String> selectedItems,
//     required Function(List<String>) onChanged,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//         Wrap(
//           spacing: 8,
//           children: options.map((option) {
//             return ChoiceChip(
//               label: Text(option),
//               selected: selectedItems.contains(option),
//               onSelected: (isSelected) {
//                 if (isSelected) {
//                   selectedItems.add(option);
//                 } else {
//                   selectedItems.remove(option);
//                 }
//                 onChanged(selectedItems); // Update the selected values
//               },
//             );
//           }).toList(),
//         ),
//       ],
//     );
//   }

//   // Single-select filter widget (for Style)
//   Widget _buildSingleSelectFilter({
//     required String label,
//     required List<String> options,
//     required String? selectedItem,
//     required Function(String?) onChanged,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//         DropdownButton<String>(
//           value: selectedItem,
//           onChanged: (newValue) {
//             onChanged(newValue); // Update the selected value
//           },
//           hint: Text('Select $label'),
//           items: options.map((option) {
//             return DropdownMenuItem<String>(
//               value: option,
//               child: Text(option),
//             );
//           }).toList(),
//         ),
//       ],
//     );
//   }

//   // Price filter widget for min and max price
//   Widget _buildPriceFilter({
//     required String label,
//     required double? initialPrice,
//     required Function(double?) onChanged,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//         TextField(
//           keyboardType: TextInputType.number,
//           controller: TextEditingController(text: initialPrice?.toString() ?? ''),
//           onChanged: (value) {
//             final price = double.tryParse(value);
//             onChanged(price); // Update the price value
//           },
//           decoration: InputDecoration(
//             hintText: 'Enter $label',
//             border: OutlineInputBorder(),
//           ),
//         ),
//       ],
//     );
//   }
// }

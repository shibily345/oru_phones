import 'package:flutter/material.dart';
import 'package:oru_phones/domain/models/selected_filter_model.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'filters_sheet_model.dart';

class FiltersSheet extends StackedView<FiltersSheetModel> {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const FiltersSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FiltersSheetModel viewModel,
    Widget? child,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          _buildHeader(viewModel),
          const Divider(height: 1),
          Expanded(
            child: Row(
              children: [
                _buildFilterCategories(viewModel),
                const VerticalDivider(width: 1),
                _buildFilterOptions(viewModel),
              ],
            ),
          ),
          _buildBottomButtons(viewModel),
        ],
      ),
    );
  }

  Widget _buildHeader(FiltersSheetModel vm) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Filters",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              vm.closeSheet();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFilterCategories(FiltersSheetModel vm) {
    return SizedBox(
      width: 120,
      child: ListView(
        children: vm.filterModel!.dataObject.toJson().keys.map((category) {
          bool isSelected = vm.selectedFilter == category;
          return ListTile(
            title: Text(
              category,
              style: TextStyle(
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? Colors.black : Colors.grey[700],
              ),
            ),
            tileColor:
                isSelected ? Colors.amber.withOpacity(0.2) : Colors.transparent,
            onTap: () => vm.selectCategory(category),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildFilterOptions(FiltersSheetModel vm) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(children: [
          ...vm.filterModel!.dataObject
              .toJson()[vm.selectedFilter]
              .map((option) {
            bool isChecked =
                vm.filter.getValue(vm.selectedFilter).contains(option) ?? false;
            return CheckboxListTile(
              title: Text(option),
              value: isChecked,
              onChanged: (bool? value) {
                if (isChecked == true) {
                  vm.removeFilter(vm.selectedFilter, option);
                } else {
                  vm.setFilter(vm.selectedFilter, option);
                }
              },
            );
          }).toList(),
        ]),
      ),
    );
  }

  Widget _buildBottomButtons(FiltersSheetModel vm) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: const Text("Clear All",
                style: TextStyle(
                    color: Colors.amber, fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
            onPressed: () {
              vm.applyFilter(request.title);
            },
            child: const Text("Apply"),
          ),
        ],
      ),
    );
  }

  @override
  FiltersSheetModel viewModelBuilder(BuildContext context) =>
      FiltersSheetModel();
}

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'sort_sheet_model.dart';

class SortSheet extends StackedView<SortSheetModel> {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const SortSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SortSheetModel viewModel,
    Widget? child,
  ) {
    // viewModel.preSort(request.data);
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Sort",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => viewModel.closeSheet(),
                ),
              ],
            ),
          ),
          const Divider(),

          // List of Options
          ListView.builder(
            shrinkWrap: true,
            itemCount: viewModel.options.length,
            itemBuilder: (context, index) {
              final isSelected = viewModel.selectedIndex == index;

              return InkWell(
                onTap: () {
                  viewModel.selectIndex(index);
                },
                child: Container(
                  color: isSelected ? Colors.amber.shade50 : Colors.transparent,
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        viewModel.options[index],
                        style: const TextStyle(fontSize: 16),
                      ),
                      Icon(
                        isSelected
                            ? Icons.radio_button_checked
                            : Icons.radio_button_unchecked,
                        color: isSelected ? Colors.amber : Colors.grey,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),

          const Divider(),

          // Buttons (Clear & Apply)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    viewModel.selectIndex(null);
                  },
                  child: const Text(
                    "Clear",
                    style: TextStyle(color: Colors.amber),
                  ),
                ),
                ElevatedButton(
                  onPressed: viewModel.selectedIndex == null
                      ? null
                      : () {
                          viewModel.applySort(
                              viewModel.options[viewModel.selectedIndex!],
                              request.title);
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black,
                  ),
                  child: const Text("Apply"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  SortSheetModel viewModelBuilder(BuildContext context) => SortSheetModel();
}

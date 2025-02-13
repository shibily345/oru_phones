import 'package:flutter/material.dart';
import 'package:oru_phones/ui/common/ui_helpers.dart';
import 'package:oru_phones/ui/views/home/widgets/product_card.dart';
import 'package:stacked/stacked.dart';

import 'products_page_viewmodel.dart';

class ProductsPageView extends StackedView<ProductsPageViewModel> {
  const ProductsPageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProductsPageViewModel viewModel,
    Widget? child,
  ) {
    return ViewModelBuilder<ProductsPageViewModel>.reactive(
        viewModelBuilder: () => ProductsPageViewModel(),
        onViewModelReady: (viewModel) => viewModel.initScroll(),
        builder: (context, model, child) {
          return Scaffold(
              appBar: AppBar(),
              body: CustomScrollView(
                controller: viewModel.scrollController,
                slivers: <Widget>[
                  _buildDealsAndSort(model, context),
                  SliverPadding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      sliver: SliverGrid.builder(
                        itemCount: model.products.length,
                        itemBuilder: (context, index) {
                          return ProductCard(
                              vm: model, product: model.products[index]);
                        },
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          childAspectRatio: 0.6,
                        ),
                      )),
                  SliverToBoxAdapter(
                    child: viewModel.isBusy
                        ? const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Center(child: CircularProgressIndicator()),
                          )
                        : const SizedBox(),
                  ),
                ],
              ));
        });
  }

  SliverToBoxAdapter _buildDealsAndSort(
      ProductsPageViewModel viewModel, BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceSmall,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                horizontalSpaceSmall,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey.shade400),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                  ),
                  onPressed: () {
                    viewModel.showSortBottomSheet();
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.sort),
                      horizontalSpaceTiny,
                      const Text("Sort", style: TextStyle(fontSize: 14)),
                      horizontalSpaceTiny,
                      const Icon(Icons.keyboard_arrow_down_rounded),
                      viewModel.sortApplyed
                          ? const CircleAvatar(
                              backgroundColor: Colors.yellow,
                              radius: 8,
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
                horizontalSpaceSmall,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey.shade400),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                  ),
                  onPressed: () {
                    viewModel.showFilterBottomSheet();
                  },
                  child: Row(
                    children: [
                      const Icon(Icons.filter_alt_outlined),
                      horizontalSpaceTiny,
                      const Text("Filters", style: TextStyle(fontSize: 14)),
                      horizontalSpaceTiny,
                      const Icon(Icons.keyboard_arrow_down_rounded),
                      viewModel.filterApplyed
                          ? const CircleAvatar(
                              backgroundColor: Colors.yellow,
                              radius: 8,
                            )
                          : const SizedBox()
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  @override
  ProductsPageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProductsPageViewModel();
}

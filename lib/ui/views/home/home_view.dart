import 'package:flutter/material.dart';
import 'package:oru_phones/domain/models/faq_model.dart';
import 'package:oru_phones/ui/common/ui_helpers.dart';
import 'package:oru_phones/ui/views/home/home_view.form.dart';
import 'package:oru_phones/ui/views/home/widgets/default.dart';
import 'package:oru_phones/ui/views/home/widgets/image.dart';
import 'package:oru_phones/ui/views/home/widgets/product_card.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'home_viewmodel.dart';
import 'widgets/onpage_widgets.dart';

@FormView(fields: [
  FormTextField(name: 'searchInput'),
])
class HomeView extends StackedView<HomeViewModel> with $HomeView {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, model, child) {
          return Scaffold(
              floatingActionButton: const SellButton(),
              drawer: DrawerMain(
                vm: viewModel,
              ),
              body: SafeArea(
                child: CustomScrollView(
                  slivers: <Widget>[
                    AppBarMain(
                      vm: model,
                    ),
                    SearchHead(
                        viewModel: model, controller: searchInputController),
                    MainSlider(
                      viewModel: model,
                    ),
                    _buildOnMind(model, context),
                    _buildBrands(model, context),
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
                    _buildFaqHeader(),
                    ...viewModel.faqs.asMap().entries.map((
                      item,
                    ) {
                      return _buildFaqBox(viewModel, item, model);
                    }).toList(),
                    const SliverToBoxAdapter(
                      child: verticalSpaceLarge,
                    ),
                    const FooterDetails()
                  ],
                ),
              ));
        });
  }

  SliverToBoxAdapter _buildFaqHeader() {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          verticalSpaceLarge,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                const ShowText(
                  text: "Frequently Asked Questians",
                  fontSize: 17,
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
              ],
            ),
          ),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildFaqBox(
      HomeViewModel viewModel, MapEntry<int, FAQ> item, HomeViewModel model) {
    return SliverToBoxAdapter(
        child: GestureDetector(
      onTap: () {
        viewModel.expandFaq(item.key);
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    item.value.question,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Icon(
                  viewModel.expandedIndex == item.key ? Icons.close : Icons.add,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
          if (model.expandedIndex == item.key)
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                item.value.answer,
                style: const TextStyle(fontSize: 14, color: Colors.black87),
              ),
            ),
        ],
      ),
    ));
  }

  SliverToBoxAdapter _buildOnMind(
      HomeViewModel viewModel, BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: ShowText(
                text: "Whats on your mind?",
                fontSize: 17,
              ),
            ),
            verticalSpaceSmall,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: viewModel.menuItems.map((item) {
                  return GestureDetector(
                    onTap: () => Navigator.pushNamed(context, item["route"]!),
                    child: SizedBox(
                      width: 120,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(item["image"]!,
                              width: 100, height: 100, fit: BoxFit.cover),
                          Text(
                            item["title"]!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          verticalSpaceLarge
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildBrands(
      HomeViewModel viewModel, BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  const ShowText(
                    text: "Top Brands",
                    fontSize: 17,
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios))
                ],
              ),
            ),
            verticalSpaceSmall,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                ...viewModel.brands.take(6).map((item) {
                  return GestureDetector(
                    child: SizedBox(
                      width: 120,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 234, 229, 229),
                              radius: 50,
                              child: CachedImage(
                                imageUrl: item.imagePath,
                                height: 30,
                                width: 80,
                                fit: BoxFit.contain,
                              )),
                          verticalSpaceLarge
                        ],
                      ),
                    ),
                  );
                }).toList(),
                GestureDetector(
                  child: const SizedBox(
                    width: 120,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 234, 229, 229),
                            radius: 50,
                            child: ShowText(text: "Viwe all >")),
                        verticalSpaceLarge
                      ],
                    ),
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildDealsAndSort(
      HomeViewModel viewModel, BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  const ShowText(
                    text: "Best Deals Near You",
                    fontSize: 17,
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        viewModel.goToProducts();
                      },
                      icon: const Icon(Icons.arrow_forward_ios))
                ],
              ),
            ),
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
  void onViewModelReady(HomeViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

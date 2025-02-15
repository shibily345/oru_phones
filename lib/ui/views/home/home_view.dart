import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return Scaffold(
        floatingActionButton: const SellButton(),
        drawer: DrawerMain(
          vm: viewModel,
        ),
        body: SafeArea(
          child: CustomScrollView(
            shrinkWrap: true,
            slivers: <Widget>[
              AppBarMain(
                vm: viewModel,
              ),
              SearchHead(
                  viewModel: viewModel, controller: searchInputController),
              MainSlider(
                viewModel: viewModel,
              ),
              _buildOnMind(viewModel, context),
              _buildBrands(viewModel, context),
              _buildDealsAndSort(viewModel, context),
              SliverPadding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                  ),
                  sliver: SliverGrid.builder(
                    itemCount: viewModel.products.length,
                    itemBuilder: (context, index) {
                      int realIndex = index - (index ~/ 8);

                      if ((index + 1) % 8 == 0) {
                        return _adCard(index);
                      } else {
                        return ProductCard(
                            product: viewModel.products[realIndex]);
                      }
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
                return _buildFaqBox(
                  viewModel,
                  item,
                );
              }).toList(),
              SliverToBoxAdapter(
                child: verticalSpaceLarge,
              ),
              const FooterDetails()
            ],
          ),
        ));
  }

  SliverToBoxAdapter _buildFaqHeader() {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          verticalSpaceLarge,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.w),
            child: Row(
              children: [
                const ShowText(
                  text: "Frequently Asked Questians",
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
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
    HomeViewModel viewModel,
    MapEntry<int, FAQ> item,
  ) {
    return SliverToBoxAdapter(
        child: GestureDetector(
      onTap: () {
        viewModel.expandFaq(item.key);
      },
      child: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(microseconds: 1300),
            margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 0.4, color: Colors.black.withAlpha(80)),
              boxShadow: [
                if (viewModel.expandedIndex == item.key)
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
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
                        viewModel.expandedIndex == item.key
                            ? Icons.close
                            : Icons.add,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ),
                if (viewModel.expandedIndex == item.key)
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(10)),
                    ),
                    child: Text(
                      item.value.answer,
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                  ),
              ],
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: const ShowText(
                text: "Whats on your mind?",
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
            ),
            verticalSpaceSmall,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 10.w,
                children: viewModel.menuItems.map((item) {
                  return GestureDetector(
                    onTap: () => Navigator.pushNamed(context, item["route"]!),
                    child: SizedBox(
                      width: 110.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(item["image"]!,
                              width: 100.w, height: 100.w, fit: BoxFit.contain),
                          Text(
                            maxLines: 2,
                            item["title"]!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                          verticalSpaceMedium
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
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: Row(
                children: [
                  const ShowText(
                    text: "Top Brands",
                    fontWeight: FontWeight.w500,
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
              child: Row(spacing: 10.w, children: [
                horizontalSpaceSmall,
                ...viewModel.brands.take(6).map((item) {
                  return GestureDetector(
                    child: SizedBox(
                      width: 80.w,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(170, 236, 236, 236),
                              radius: 50.w,
                              child: CachedImage(
                                imageUrl: item.imagePath,
                                width: 60.w,
                                fit: BoxFit.contain,
                              )),
                          verticalSpaceSmall
                        ],
                      ),
                    ),
                  );
                }).toList(),
                GestureDetector(
                  child: SizedBox(
                    width: 120.w,
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 234, 229, 229),
                            radius: 50,
                            child: ShowText(text: "Viwe all >")),
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
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: Row(
                children: [
                  const ShowText(
                    text: "Best Deals Near You",
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
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
            verticalSpaceMedium,
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
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

  Image _adCard(int index) => Image.asset((index ~/ 8) % 2 == 0
      ? 'assets/images/Sell.png'
      : 'assets/images/Compare.png');

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

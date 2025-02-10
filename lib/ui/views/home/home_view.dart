import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:oru_phones/ui/common/ui_helpers.dart';
import 'package:oru_phones/ui/views/home/home_view.form.dart';
import 'package:oru_phones/ui/views/home/widgets/default.dart';
import 'package:oru_phones/ui/views/home/widgets/product_card.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'home_viewmodel.dart';

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
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton.extended(
            onPressed: () {
              // Action on button tap
            },
            label: const Row(
              children: [
                Text(
                  "Sell",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.amber,
                  ),
                ),
                SizedBox(width: 4),
                Icon(
                  Icons.add,
                  color: Colors.amber,
                  size: 18,
                ),
              ],
            ),
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: const BorderSide(color: Colors.amber, width: 2),
            ),
            elevation: 5,
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: const BoxDecoration(color: Colors.blue),
                  child: Row(
                    children: [
                      CustomContainer(
                          child: Image.asset(
                        "assets/images/logo.png",
                        height: 30,
                      ))
                    ],
                  )),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomButton(title: "Login/Signup"),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomButton(title: "Sell Your Phone"),
              ),
              // _buildDrawerItem(Icons.home, "Home", () {
              //   Navigator.pop(context);
              // }),
              // _buildDrawerItem(Icons.person, "Profile", () {
              //   Navigator.pop(context);
              // }),
              // _buildDrawerItem(Icons.settings, "Settings", () {
              //   Navigator.pop(context);
              // }),
              // _buildDrawerItem(Icons.logout, "Logout", () {
              //   Navigator.pop(context);
              // }),
            ],
          ),
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                floating: true,
                pinned: false,
                snap: false,
                backgroundColor: Colors.white,
                elevation: 0,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: 30,
                      width: 50,
                    ),
                    Row(
                      children: [
                        const Text("India",
                            style: TextStyle(color: Colors.black)),
                        const SizedBox(width: 5),
                        const Icon(Icons.location_on, color: Colors.black),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            viewModel.showBottomSheet();
                          },
                          child: const Text("Login"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SearchHead(
                viewModel: viewModel,
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 300,
                  child: Column(
                    children: [
                      verticalSpace(30),
                      CarouselSlider(
                        items: viewModel.images.map((imagePath) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(imagePath,
                                fit: BoxFit.cover, width: double.infinity),
                          );
                        }).toList(),
                        options: CarouselOptions(
                          height: 200,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          viewportFraction: 0.9,
                          onPageChanged: (index, reason) {
                            viewModel.updateIndex(index);
                          },
                        ),
                      ),

                      // Dots Indicator
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: viewModel.images.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => viewModel.updateIndex(entry.key),
                            child: Container(
                              width: viewModel.currentIndex == entry.key
                                  ? 12.0
                                  : 8.0,
                              height: viewModel.currentIndex == entry.key
                                  ? 12.0
                                  : 8.0,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: viewModel.currentIndex == entry.key
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      verticalSpaceMedium,
                      Text("Whats on your mind?"),
                      verticalSpaceMedium,
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: viewModel.menuItems.map((item) {
                        return GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, item["route"]!),
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
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                verticalSpaceLarge
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final product = viewModel.products[index];
                      return ProductCard(product: product);
                    },
                    childCount: viewModel.products.length,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 items per row
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio:
                        0.7, // Adjust aspect ratio for card layout
                  ),
                ),
              ),
              SliverFixedExtentList(
                itemExtent: 50.0,
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.lightBlue[100 * (index % 9)],
                      child: Text('List Item $index'),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
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

class SearchHead extends StatelessWidget {
  const SearchHead({
    super.key,
    required this.viewModel,
  });
  final HomeViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true, // Keeps search and buttons visible
      delegate: _SliverAppBarDelegate(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  suffixIcon: const Icon(Icons.mic, color: Colors.grey),
                  hintText: "Search phones with make, model...",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.blueAccent),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: viewModel.options.map((option) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.grey.shade400),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                      ),
                      onPressed: () {},
                      child: Text(option, style: const TextStyle(fontSize: 14)),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  _SliverAppBarDelegate({required this.child});

  @override
  double get minExtent => 170; // Minimum height when collapsed
  @override
  double get maxExtent => 170; // Maximum height when expanded

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ClipRRect(
      // borderRadius: BorderRadius.circular(20), // Rounded Corners
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Blur Effect
        child: Container(
          width: screenWidth(context),
          height: 260,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color:
                Colors.white.withOpacity(0.8), // Transparent White Background
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: Colors.white.withOpacity(0.8)), // Glass Border
          ),
          child: child,
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}

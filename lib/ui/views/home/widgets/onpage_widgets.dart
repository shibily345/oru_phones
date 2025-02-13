import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:oru_phones/ui/common/ui_helpers.dart';
import 'package:oru_phones/ui/views/home/home_viewmodel.dart';
import 'package:oru_phones/ui/views/home/widgets/default.dart';

class FooterDetails extends StatelessWidget {
  const FooterDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        decoration: const BoxDecoration(color: Colors.amber),
        width: screenWidth(context),
        // height: screenHeight(context) * 0.76,
        child: Column(
          children: [
            verticalSpaceLarge,
            const ShowText(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              textAlign: TextAlign.center,
              text: "Get Notified About Our \nLatest Offers and Price Drops",
              maxLines: 2,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your email here",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    child: const Text(
                      "Send",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  color: Colors.white,
                  height: 1200,
                  child: Container(
                    width: screenWidth(context),
                    height: 390,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 56, 56, 56),
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/images/Frame.png'),
                        verticalSpaceMedium,
                        const ShowText(
                          color: Colors.white,
                          text: "Invate A Frind",
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                        verticalSpace(350),
                        const ShowText(
                          color: Colors.white,
                          text: "Or Share",
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                        Image.asset(
                          'assets/images/share.png',
                          width: 250,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: 290,
                    child: Image.asset(
                      'assets/images/Footer Deal.png',
                      width: 450,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MainSlider extends StatelessWidget {
  final HomeViewModel viewModel;
  const MainSlider({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      shape: BoxShape.circle,
                      color: viewModel.currentIndex == entry.key
                          ? Colors.grey
                          : Colors.transparent,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarMain extends StatelessWidget {
  const AppBarMain({
    super.key,
    required this.vm,
  });
  final HomeViewModel vm;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
              const Text("India", style: TextStyle(color: Colors.black)),
              const SizedBox(width: 5),
              const Icon(Icons.location_on, color: Colors.black),
              const SizedBox(width: 10),
              vm.isLoggedin
                  ? const SizedBox()
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        // vm.showBottomSheet();
                        vm.goToLogin();
                      },
                      child: const Text("Login"),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}

class DrawerMain extends StatelessWidget {
  final HomeViewModel vm;
  const DrawerMain({
    super.key,
    required this.vm,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          verticalSpaceLarge,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 30,
                  width: 80,
                ),
                const Spacer(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.close))
              ],
            ),
          ),
          vm.isLoggedin
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButton(
                    title: "Login/Signup",
                    onPressed: () {
                      vm.showBottomSheet();
                    },
                  ),
                ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomButton(title: "Sell Your Phone"),
          ),
          !vm.isLoggedin
              ? const SizedBox()
              : ListTile(
                  leading: const Icon(Icons.logout),
                  title: const ShowText(text: "Logout"),
                  onTap: () {
                    vm.logout();
                  },
                )
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
    );
  }
}

class SellButton extends StatelessWidget {
  const SellButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
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
    );
  }
}

class SearchHead extends StatelessWidget {
  const SearchHead({
    super.key,
    required this.viewModel,
    required this.controller,
  });
  final HomeViewModel viewModel;
  final TextEditingController controller;
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
                controller: controller,
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
            // borderRadius: BorderRadius.circular(20),
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

import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              verticalSpaceLarge,
              Container(
                decoration: const BoxDecoration(color: Colors.amber),
                child: Column(
                  children: [
                    verticalSpaceLarge,
                    const ShowText(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      textAlign: TextAlign.center,
                      text:
                          "Get Notified About Our \nLatest Offers and Price Drops",
                      maxLines: 2,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 60.w, vertical: 25.h),
                      padding: const EdgeInsets.all(5),
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
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 16),
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
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset('assets/images/Frame.png'),
              Container(
                width: screenWidth(context),
                color: const Color.fromARGB(255, 40, 40, 40),
                height: 200.w,
                child: const Padding(
                  padding: EdgeInsets.only(top: 18.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: ShowText(
                      color: Colors.white,
                      text: "Invate A Frind",
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              verticalSpaceMedium,
              const ShowText(
                color: Colors.white,
                text: "Or Share",
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              Container(
                width: screenWidth(context),
                height: 200.h,
                color: Colors.white,
                child: Column(
                  children: [
                    const Spacer(),
                    Image.asset(
                      'assets/images/share.png',
                      width: 250.w,
                    ),
                    verticalSpaceLarge
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 5.h,
            left: 20.w,
            child: Image.asset(
              'assets/images/Footer Deal.png',
              width: 400.w,
            ),
          ),
        ],
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
        height: 260.h,
        child: Column(
          children: [
            CarouselSlider(
              items: viewModel.images.map((imagePath) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(imagePath,
                      fit: BoxFit.cover, width: double.infinity),
                );
              }).toList(),
              options: CarouselOptions(
                height: 200.h,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
                onPageChanged: (index, reason) {
                  viewModel.updateIndex(index);
                },
              ),
            ),
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
            height: 30.h,
            width: 50.w,
          ),
          Row(
            children: [
              const Text("India", style: TextStyle(color: Colors.black)),
              SizedBox(width: 5.w),
              const Icon(Icons.location_on, color: Colors.black),
              SizedBox(width: 10.w),
              vm.isLoggedin
                  ? IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_none_outlined),
                    )
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
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
      child: Column(
        children: [
          verticalSpaceLarge,
          verticalSpaceSmall,
          Container(
            color: const Color.fromARGB(255, 239, 239, 239),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, top: 20),
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
          ),
          !vm.isLoggedin
              ? const SizedBox()
              : Container(
                  color: const Color.fromARGB(255, 239, 239, 239),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                            "assets/images/profile.jpg",
                          ),
                        ),
                        horizontalSpaceSmall,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ShowText(
                              text: vm.user.userName,
                              color: Colors.black,
                              fontSize: 22,
                            ),
                            ShowText(
                              text: "joined: ${vm.user.createdDate}",
                              color: Colors.black.withAlpha(80),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
          verticalSpaceMedium,
          vm.isLoggedin
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomButton(
                    borderRadius: 40,
                    color: const Color.fromARGB(255, 1, 63, 114),
                    elevation: 3,
                    title: "Login/Signup",
                    onPressed: () {
                      vm.showLoginBottomSheet();
                    },
                  ),
                ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomButton(
              textColor: Colors.black,
              title: "Sell Your Phone",
              color: Colors.amber,
              borderRadius: 40,
              elevation: 3,
            ),
          ),
          !vm.isLoggedin
              ? const SizedBox()
              : ListTile(
                  leading: const Icon(Icons.logout),
                  title: const ShowText(text: "Logout"),
                  onTap: () {
                    vm.logout();
                  },
                ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: vm.items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.1,
              ),
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Colors.black26),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(vm.items[index]["icon"],
                          size: 20, color: Colors.black),
                      const SizedBox(height: 4),
                      Text(
                        vm.items[index]["label"],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
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
        onPressed: () {},
        label: const Row(
          children: [
            Text(
              "Sell",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.amber,
              ),
            ),
            SizedBox(width: 4),
            Icon(
              Icons.add,
              color: Colors.amber,
              size: 28,
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
      pinned: true,
      delegate: _SliverAppBarDelegate(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 4.0.h),
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
                    padding: EdgeInsets.only(left: 5.0.w),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.grey.shade300),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 6.h),
                      ),
                      onPressed: () {},
                      child: Text(option, style: const TextStyle(fontSize: 14)),
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
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  _SliverAppBarDelegate({required this.child});

  @override
  double get minExtent => 150;
  @override
  double get maxExtent => 150;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: screenWidth(context),
          height: 220.h,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            border: Border.all(color: Colors.white.withOpacity(0.8)),
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

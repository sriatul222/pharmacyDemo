import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmaconnect/extra/colors.dart';
import 'package:pharmaconnect/screens/dashBoardScreen/dashBoardCubit/dashboard_cubit.dart';

class DashBoardForm extends StatelessWidget {
  const DashBoardForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _mainWrapperBody(context),
      bottomNavigationBar: _mainWrapperBottomNavBar(context),
    );
  }

  BottomAppBar _mainWrapperBottomNavBar(BuildContext context) {
    return BottomAppBar(
      color: MyColor.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _bottomAppBarItem(
            context,
            defaultIcon: Icons.home_filled,
            page: 0,
            label: "Home",
            filledIcon: Icons.home_filled,
          ),
          _bottomAppBarItem(
            context,
            defaultIcon: Icons.padding_rounded,
            page: 1,
            label: "My Order",
            filledIcon: Icons.padding_rounded,
          ),
          _bottomAppBarItem(
            context,
            defaultIcon: Icons.shopping_cart,
            page: 2,
            label: "Cart",
            filledIcon: Icons.shopping_cart,
          ),
          _bottomAppBarItem(
            context,
            defaultIcon: Icons.face,
            page: 3,
            label: "Profile",
            filledIcon: Icons.face,
          ),
        ],
      ),
    );
  }

  Widget _bottomAppBarItem(
    BuildContext context, {
    required defaultIcon,
    required page,
    required label,
    required filledIcon,
  }) {
    return GestureDetector(
      onTap: () {
        context.read<DashBoardCubit>().onPageChanged(page);
        context.read<DashBoardCubit>().state.pageController.animateToPage(page,
            duration: const Duration(milliseconds: 10),
            curve: Curves.fastLinearToSlowEaseIn);
      },
      child: Container(
        height: 60,
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              context.watch<DashBoardCubit>().state.currentTab == page
                  ? filledIcon
                  : defaultIcon,
              color: context.watch<DashBoardCubit>().state.currentTab == page
                  ? MyColor.activeIconColor
                  : MyColor.inactiveIconColor,
              size: 26,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              label,
              style: TextStyle(
                color: context.watch<DashBoardCubit>().state.currentTab == page
                    ? MyColor.activeIconColor
                    : MyColor.inactiveIconColor,
                fontSize: 13,
                fontWeight:
                    context.watch<DashBoardCubit>().state.currentTab == page
                        ? FontWeight.w600
                        : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  PageView _mainWrapperBody(BuildContext context) {
    return PageView(
      onPageChanged: (int page) =>
          context.read<DashBoardCubit>().onPageChanged(page),
      controller: context.read<DashBoardCubit>().state.pageController,
      children: context.read<DashBoardCubit>().state.topLevelPages,
    );
  }
}

import 'package:box/core/extension/size.dart';
import 'package:box/core/style/color.dart';
import 'package:box/core/style/icon_broken.dart';
import 'package:box/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return Scaffold(
            backgroundColor: Recolor.card4Color,
            body: cubit.screens[cubit.navBarIndex],
            bottomNavigationBar: _buildNavBar(context, cubit));
      },
    );
  }

  GNav _buildNavBar(BuildContext context, HomeCubit cubit) {
    return GNav(
      selectedIndex: cubit.navBarIndex,
      onTabChange: (value) {
        cubit.onNavBarChange(value);
      },
      backgroundColor: Colors.white,
      rippleColor: Colors.grey.shade800, // tab button ripple color when pressed
      hoverColor: Colors.grey.shade700, // tab button hover color
      haptic: true, // haptic feedback
      tabBorderRadius: 15,
      tabActiveBorder:
          Border.all(color: Colors.black, width: 1), // tab button border

      curve: Curves.easeOutExpo, // tab animation curves
      duration: const Duration(milliseconds: 900), // tab animation duration
      gap: 8, // the tab button gap between icon and text
      color: Colors.grey[800], // unselected icon color
      activeColor: Colors.purple, // selected icon and text color
      iconSize: 24, // tab button icon size
      tabBackgroundColor:
          Colors.purple.withOpacity(0.1), // selected tab background color
      padding: EdgeInsets.symmetric(
          horizontal: 2.5.w(context), vertical: 0.6.h(context)),
      tabs: const [
        GButton(
          icon: IconBroken.Home,
          text: 'Home',
        ),
        GButton(icon: IconBroken.Search, text: 'Search'),
        GButton(icon: IconBroken.Video, text: 'Enjoy'),
        GButton(icon: IconBroken.Category, text: 'Category'),
        GButton(icon: IconBroken.More_Square, text: 'More'),
      ],
    );
  }
}

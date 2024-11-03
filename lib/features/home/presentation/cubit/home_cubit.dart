import 'package:box/features/home_module/presentation/pages/home_module_screen.dart';
import 'package:box/features/search/presentation/pages/search_screen.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../category/presentation/pages/category_screen.dart';
import '../../../enjoy/presentation/pages/enjoy_screen.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
  int navBarIndex = 0;
  List<Widget> screens = [
    const HomeModuleScreen(),
    const SearchScreen(),
    const EnjoyScreen(),
    const CategoryScreen(),
    const HomeModuleScreen(),
  ];

  void onNavBarChange(int index) {
    emit(StartChangeNavIndexState());
    navBarIndex = index;
    emit(EndChangeNavIndexState());
  }
}

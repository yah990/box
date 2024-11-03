import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_module_state.dart';

class HomeModuleCubit extends Cubit<HomeModuleState> {
  HomeModuleCubit() : super(HomeModuleInitial());
}

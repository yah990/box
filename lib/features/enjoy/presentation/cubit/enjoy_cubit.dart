import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'enjoy_state.dart';

class EnjoyCubit extends Cubit<EnjoyState> {
  EnjoyCubit() : super(EnjoyInitial());
}

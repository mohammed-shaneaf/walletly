import 'package:bloc/bloc.dart';
import 'package:walletly/features/on_boarding/presentation/manager/on_boarding_state.dart';

// Ensure this logic is working in your cubit to track page index
class OnboardingCubit extends Cubit<OnboardingState> {
  final int length;
  OnboardingCubit({required this.length})
    : super(OnboardingState(index: 0, length: length));

  void onPageChanged(int i) =>
      emit(state.copyWith(index: i)); // Emit index change
  void next() {
    if (state.isLast) return;
    emit(state.copyWith(index: state.index + 1));
  }

  void skip() =>
      emit(state.copyWith(index: length - 1)); // Skip to the last page
}

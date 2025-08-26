import 'package:equatable/equatable.dart';

class OnboardingState extends Equatable {
  final int index;
  final int length;

  const OnboardingState({required this.index, required this.length});

  bool get isLast => index == length - 1;

  OnboardingState copyWith({int? index, int? length}) => OnboardingState(
    index: index ?? this.index,
    length: length ?? this.length,
  );

  @override
  List<Object?> get props => [index, length];
}

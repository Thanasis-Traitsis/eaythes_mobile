part of 'carousel_bloc.dart';

class CarouselState extends Equatable {
  const CarouselState({
    int? currentIndex,
  }) : currentIndex = currentIndex ?? 0;

  final int currentIndex;

  @override
  List<Object> get props => [currentIndex];

  CarouselState copyWith({int? currentIndex}) {
    return CarouselState(
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}

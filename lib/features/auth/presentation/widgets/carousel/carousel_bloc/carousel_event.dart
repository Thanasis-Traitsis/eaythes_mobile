part of 'carousel_bloc.dart';

abstract class CarouselEvent extends Equatable {
  const CarouselEvent();

  @override
  List<Object> get props => [];
}

class ChangeIndicator extends CarouselEvent {
  final int current;

  const ChangeIndicator({
    required this.current,
  });
}

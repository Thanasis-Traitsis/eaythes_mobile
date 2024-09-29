import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'carousel_event.dart';
part 'carousel_state.dart';

class CarouselBloc extends Bloc<CarouselEvent, CarouselState> {
  CarouselBloc() : super(const CarouselState()) {
    on<ChangeIndicator>(_onChangeIndicator);
  }

  void _onChangeIndicator(
      ChangeIndicator event, Emitter<CarouselState> emit) async {
    emit(state.copyWith(currentIndex: event.current));
  }
}

import 'package:bloc/bloc.dart';

part 'bottom_nav_event.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, int> {
  BottomNavBloc() : super(0) {
    on<BottomNavEvent>((event, emit) {
      switch (event) {
        case BottomNavEvent.home:
          emit(0);
          break;
        case BottomNavEvent.link:
          emit(1);
          break;
      }
    });
  }
}

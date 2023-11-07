import 'package:bmi_calculator/CORE/utils/enum.dart';
import 'package:equatable/equatable.dart';

import '../bloc_export.dart';

part 'bmi_event.dart';

part 'bmi_state.dart';

class BmiBloc extends HydratedBloc<BmiEvent, BmiState> {
  BmiBloc()
      : super(const BmiInitial(
            selectedMale: true,
            numbers: 180,
            counterWeight: 60,
            ageCounter: 15)) {
    on<BmiEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<EventMaleGender>((event, emit) {
      emit(BmiState(
          selectedMale: true,
          numbers: state.numbers,
          counterWeight: state.counterWeight,
          ageCounter: state.ageCounter));
    });
    on<EventFemaleGender>((event, emit) {
      emit(BmiState(
          selectedMale: false,
          numbers: state.numbers,
          counterWeight: state.counterWeight,
          ageCounter: state.ageCounter));
    });

    on<EventSetNumbers>((event, emit) {
      int num = event.val;
      emit(BmiState(
          selectedMale: state.selectedMale,
          numbers: num,
          counterWeight: state.counterWeight,
          ageCounter: state.ageCounter));
    });

    on<EventIncrementAgeCounter>((event, emit) {
      int age = state.ageCounter + 1;
      emit(BmiState(
          selectedMale: state.selectedMale,
          numbers: state.numbers,
          counterWeight: state.counterWeight,
          ageCounter: age));
    });
    on<EventDecrementAgeCounter>((event, emit) {
      int age = state.ageCounter - 1;
      emit(BmiState(
          selectedMale: state.selectedMale,
          numbers: state.numbers,
          counterWeight: state.counterWeight,
          ageCounter: age));
    });

    on<EventIncrementCounterWeight>((event, emit) {
      int weight = state.counterWeight + 1;
      emit(BmiState(
          selectedMale: state.selectedMale,
          numbers: state.numbers,
          counterWeight: weight,
          ageCounter: state.ageCounter));
    });
    on<EventDecrementCounterWeight>((event, emit) {
      int weight = state.counterWeight - 1;
      emit(BmiState(
          selectedMale: state.selectedMale,
          numbers: state.numbers,
          counterWeight: weight,
          ageCounter: state.ageCounter));
    });
  }

  // @override
  // BmiState? fromJson(Map<String, dynamic> json) {
  //   // TODO: implement fromJson
  //   throw UnimplementedError();
  // }
  //
  // @override
  // Map<String, dynamic>? toJson(BmiState state) {
  //   // TODO: implement toJson
  //   throw UnimplementedError();
  // }

  @override
  BmiState? fromJson(Map<String, dynamic> json) {
    return BmiState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(BmiState state) {
    return state.toMap();
  }
}

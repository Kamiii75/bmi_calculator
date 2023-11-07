part of 'bmi_bloc.dart';

class BmiState extends Equatable {
  const BmiState(
     {required this.selectedMale,
      required this.numbers,
      required this.counterWeight,
      required this.ageCounter});

  // final Gender selectedGender = Gender.male;
  final bool selectedMale;
  final int numbers;
  final int counterWeight;
  final int ageCounter;

  @override
  List<Object> get props =>
      [selectedMale, numbers, counterWeight, ageCounter];

  Map<String, dynamic> toMap() {
    return {
      "selectedMale": selectedMale,
      "numbers": numbers,
      "counterWeight": counterWeight,
      "ageCounter": ageCounter,
    };
  }

  factory BmiState.fromMap(Map<String, dynamic> map) {
    return BmiState(
      selectedMale: map["selectedMale"] ?? true,
      numbers: map["numbers"] ?? 180,
      counterWeight: map["counterWeight"] ?? 60,
      ageCounter: map["ageCounter"] ?? 15,
    );
  }
}

class BmiInitial extends BmiState {
  const BmiInitial(
      {required super.selectedMale,
      required super.numbers,
      required super.counterWeight,
      required super.ageCounter});
}

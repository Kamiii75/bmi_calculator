part of 'bmi_bloc.dart';

abstract class BmiEvent extends Equatable {
  const BmiEvent();
  @override
  List<Object> get props => [];
}

class EventFemaleGender extends BmiEvent{}
class EventMaleGender extends BmiEvent{}
class EventIncrementAgeCounter extends BmiEvent{}
class EventDecrementAgeCounter extends BmiEvent{}
class EventIncrementCounterWeight extends BmiEvent{}
class EventDecrementCounterWeight extends BmiEvent{}

class EventSetNumbers extends BmiEvent{
  final int val;

  const EventSetNumbers({required this.val});
  @override
  List<Object> get props => [val];
}
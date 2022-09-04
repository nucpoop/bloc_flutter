part of 'timer_bloc.dart';

abstract class TimerState extends Equatable {
  const TimerState(this.duration);
  final int duration;

  @override
  List<Object> get props => [duration];
}

class TimerInitial extends TimerState {
  const TimerInitial(super.duration);

  @override
  String toString() => 'TimerInitail { duration: $duration }';
}

class TimerRunPause extends TimerState {
  const TimerRunPause(super.duration);

  @override
  String toString() => 'TimerRunPhase { duration: $duration }';
}

class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(super.duration);

  @override
  String toString() => 'TimeRunInProgress { duration: $duration }';
}

class TimeRunComplete extends TimerState {
  const TimeRunComplete() : super(0);
}

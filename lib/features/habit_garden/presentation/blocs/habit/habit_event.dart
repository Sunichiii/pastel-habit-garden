part of 'habit_bloc.dart';

abstract class HabitEvent extends Equatable{
  const HabitEvent();
}

//initial loading ko lagi
class LoadHabit extends HabitEvent{
  @override
  List<Object?> get props => [];
}

//pachi ko lagi
class CompleteHabit extends HabitEvent{
  final String habitId;

  const CompleteHabit(this.habitId);

  @override
  List<Object?> get props => [habitId];
}

//naya habit thapne event
class AddHabitEvent extends HabitEvent{
  final Habit habit;
  const AddHabitEvent(this.habit);

  @override
  List<Object?> get props => [habit];
}


class DeleteHabitEvent extends HabitEvent{
  final String habitId;
  const DeleteHabitEvent(this.habitId);

  @override
  List<Object?> get props => [habitId];
}
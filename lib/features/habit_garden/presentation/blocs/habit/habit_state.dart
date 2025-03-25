part of 'habit_bloc.dart';

abstract class HabitState extends Equatable{
  const HabitState();
}


//initial app start huda ko state
class HabitInitial extends HabitState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class HabitsLoading extends HabitState{
  @override
  List<Object?> get props => [];
}

//loaded state ko lagi
class HabitsLoaded extends HabitState{
  final List <Habit> habits;
  const HabitsLoaded(this.habits);

  @override
  List<Object?> get props => [habits];
}


//error state ko lagi
class HabitsError extends HabitState{
  final String message;
  const HabitsError(this.message);

  @override
  List<Object?> get props => [message];
}
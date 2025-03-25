import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pastel_habit_garden/features/habit_garden/domain/entities/habit.dart';
import 'package:pastel_habit_garden/features/habit_garden/domain/usecases/get_habits.dart';
import 'package:pastel_habit_garden/features/habit_garden/domain/usecases/add_habit.dart';
import 'package:pastel_habit_garden/features/habit_garden/domain/usecases/delete_habit.dart';
import 'package:pastel_habit_garden/features/habit_garden/domain/usecases/usecase.dart';

part 'habit_event.dart';
part 'habit_state.dart';

// Main BLoC class jasma sabai logic huncha
class HabitBloc extends Bloc<HabitEvent, HabitState> {
  final GetHabits getHabits;
  final CompleteHabit completeHabit;
  final AddHabit addHabit;
  final DeleteHabit deleteHabit;

  HabitBloc({
    required this.getHabits,
    required this.completeHabit,
    required this.addHabit,
    required this.deleteHabit,
  }) : super(HabitInitial()) {
    // Event haru handle garne handlers haru
    on<LoadHabit>(_onLoadHabits);
    on<CompleteHabit>(_onCompleteHabit);
    on<AddHabitEvent>(_onAddHabit);
    on<DeleteHabitEvent>(_onDeleteHabit);
  }

  // Load habits handler
  Future<void> _onLoadHabits(
      LoadHabit event,
      Emitter<HabitState> emit,
      ) async {
    emit(HabitsLoading());  // Loading state ma pathaune
    try {
      final habits = await getHabits(NoParams());  // Use case bata data magne
      emit(HabitsLoaded(habits));  // Data aayesi loaded state ma pathaune
    } catch (e) {
      emit(HabitsError('Failed to load habits'));  // Error handle garne
    }
  }

  // Complete habit handler
  Future<void> _onCompleteHabit(
      CompleteHabit event,
      Emitter<HabitState> emit,
      ) async {
    final currentState = state;
    if (currentState is HabitsLoaded) {
      try {
        await completeHabit;  // Complete garne use case call garne
        final updatedHabits = await getHabits(NoParams());  // Feri data load garne
        emit(HabitsLoaded(updatedHabits));  // Updated data pathaune
      } catch (e) {
        emit(HabitsError('Failed to complete habit'));  // Error handle garne
        emit(currentState);  // Purano state ma feri pathaune
      }
    }
  }

  // Add habit handler
  Future<void> _onAddHabit(
      AddHabitEvent event,
      Emitter<HabitState> emit,
      ) async {
    final currentState = state;
    if (currentState is HabitsLoaded) {
      try {
        await addHabit(event.habit);  // Add garne use case call garne
        final updatedHabits = await getHabits(NoParams());  // Feri data load garne
        emit(HabitsLoaded(updatedHabits));  // Updated data pathaune
      } catch (e) {
        emit(HabitsError('Failed to add habit'));  // Error handle garne
        emit(currentState);  // Purano state ma feri pathaune
      }
    }
  }

  // Delete habit handler
  Future<void> _onDeleteHabit(
      DeleteHabitEvent event,
      Emitter<HabitState> emit,
      ) async {
    final currentState = state;
    if (currentState is HabitsLoaded) {
      try {
        await deleteHabit(event.habitId);  // Delete garne use case call garne
        final updatedHabits = await getHabits(NoParams());  // Feri data load garne
        emit(HabitsLoaded(updatedHabits));  // Updated data pathaune
      } catch (e) {
        emit(HabitsError('Failed to delete habit'));  // Error handle garne
        emit(currentState);  // Purano state ma feri pathaune
      }
    }
  }
}
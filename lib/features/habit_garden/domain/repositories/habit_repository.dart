import 'package:pastel_habit_garden/features/habit_garden/domain/entities/habit.dart';

abstract class HabitRepository{
  Future<List<Habit>> getHabits();
  Future<void> completeHabit(String habitId);
  Future<void> addHabit(Habit habit);
  Future<void> deleteHabit(String habitId);
}
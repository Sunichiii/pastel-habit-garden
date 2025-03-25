import 'package:pastel_habit_garden/features/habit_garden/domain/entities/habit.dart';
import 'package:pastel_habit_garden/features/habit_garden/domain/repositories/habit_repository.dart';
import 'package:pastel_habit_garden/features/habit_garden/domain/usecases/usecase.dart';

class AddHabit implements Usecase<void, Habit>{
  final HabitRepository repository;
  const AddHabit(this.repository);
  @override
  Future<void> call(Habit habit)async{
    return await repository.addHabit(habit);
  }
}
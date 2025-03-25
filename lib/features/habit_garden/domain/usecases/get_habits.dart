import 'package:pastel_habit_garden/features/habit_garden/domain/repositories/habit_repository.dart';
import 'package:pastel_habit_garden/features/habit_garden/domain/usecases/usecase.dart';

import '../entities/habit.dart';

class GetHabits implements Usecase<List<Habit>, NoParams>{
  final HabitRepository repository;

  const GetHabits(this.repository);

  @override
  Future<List<Habit>> call(NoParams params) async{
    return await repository.getHabits();
  }
}
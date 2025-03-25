import 'package:pastel_habit_garden/features/habit_garden/domain/entities/habit.dart';
import 'package:pastel_habit_garden/features/habit_garden/domain/repositories/habit_repository.dart';

class GetHabits implements UseCase<List<Habit>, NoParams>{
  final HabitRepository repository;
  const GetHabits(this.repository);

  @override
  Future<List<Habit>> call (NoParams params) async{
    return await repository.getHabits();
  }
}


abstract class UseCase<Type, Params>{
  Future<Type> call(Params params);
}

class NoParams{}
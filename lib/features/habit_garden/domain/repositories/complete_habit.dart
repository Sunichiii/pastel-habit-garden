import 'package:pastel_habit_garden/features/habit_garden/domain/repositories/habit_repository.dart';
import 'get_habits.dart';

class CompleteHabit implements UseCase<void, String> {
  final HabitRepository repository;

  const CompleteHabit(this.repository);

  @override
  Future<void> call(String habitId) async {
    return await repository.completeHabit(habitId);
  }
}
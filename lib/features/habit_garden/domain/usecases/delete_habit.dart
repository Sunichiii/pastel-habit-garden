import 'package:pastel_habit_garden/features/habit_garden/domain/usecases/usecase.dart';

import '../repositories/habit_repository.dart';

class DeleteHabit implements Usecase<void, String>{
  final HabitRepository repository;
  const DeleteHabit(this.repository);

  @override
  Future<void> call(String habitId)async {
   return await repository.deleteHabit(habitId);
  }


}
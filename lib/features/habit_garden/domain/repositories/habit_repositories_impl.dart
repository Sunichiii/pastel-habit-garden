// import 'package:pastel_habit_garden/features/habit_garden/domain/entities/habit.dart';
// import 'package:pastel_habit_garden/features/habit_garden/domain/repositories/habit_repository.dart';
//
// class HabitRepositoryImpl implements HabitRepository {
//   final HabitLocalDataSource localDataSource;
//
//   HabitRepositoryImpl({required this.localDataSource});
//
//   @override
//   Future<List<Habit>> getHabits() async {
//     return await localDataSource.getHabits();
//   }
//
//   @override
//   Future<void> completeHabit(String habitId) async {
//     return await localDataSource.completeHabit(habitId);
//   }
//
//   @override
//   Future<void> addHabit(Habit habit) async {
//     return await localDataSource.addHabit(habit);
//   }
//
//   @override
//   Future<void> deleteHabit(String habitId) async {
//     return await localDataSource.deleteHabit(habitId);
//   }
// }
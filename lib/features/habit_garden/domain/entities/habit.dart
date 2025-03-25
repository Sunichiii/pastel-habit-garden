//domain layer ma use hune

class Habit {
  final String id;
  final String name;
  final String description;
  final int currentStreak;
  final int maxStreak;
  final DateTime lastCompleted;
  final bool isCompletedToday;

  const Habit({
    required this.id,
    required this.name,
    required this.description,
    required this.currentStreak,
    required this.maxStreak,
    required this.lastCompleted,
    required this.isCompletedToday,
  });

  Habit copyWith({
    String ?id,
    String ? name,
    String ? description,
    int ? maxStreak,
    DateTime ? lastCompleted,
    bool ? isCompletedToday,
})
  {
    return Habit(
        id: id?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        currentStreak: currentStreak,
        maxStreak: maxStreak ?? this.maxStreak,
        lastCompleted: lastCompleted ?? this.lastCompleted,
        isCompletedToday: isCompletedToday ?? this.isCompletedToday
    );
  }
}

import 'package:equatable/equatable.dart';

// Habit ko basic structure 🏋️‍♂️
class Habit extends Equatable {
  final String id;  // Unique ID
  final String name;  // Habit name (e.g. "Drink water")
  final String emoji;  // Related emoji (e.g. "💧")
  final int currentStreak;  // Current streak count
  final int maxStreak;  // Highest streak ever
  final DateTime lastCompleted;  // Last completed date
  final bool isCompletedToday;  // Aaja complete gareko ki nai

  const Habit({
    required this.id,
    required this.name,
    required this.emoji,
    required this.currentStreak,
    required this.maxStreak,
    required this.lastCompleted,
    required this.isCompletedToday,
  });

  // Copy with method (existing object modify garne)
  Habit copyWith({
    String? id,
    String? name,
    String? emoji,
    int? currentStreak,
    int? maxStreak,
    DateTime? lastCompleted,
    bool? isCompletedToday,
  }) {
    return Habit(
      id: id ?? this.id,
      name: name ?? this.name,
      emoji: emoji ?? this.emoji,
      currentStreak: currentStreak ?? this.currentStreak,
      maxStreak: maxStreak ?? this.maxStreak,
      lastCompleted: lastCompleted ?? this.lastCompleted,
      isCompletedToday: isCompletedToday ?? this.isCompletedToday,
    );
  }

  @override
  List<Object?> get props => [
    id,
    name,
    emoji,
    currentStreak,
    maxStreak,
    lastCompleted,
    isCompletedToday,
  ];
}
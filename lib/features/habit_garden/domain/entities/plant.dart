import 'package:equatable/equatable.dart';

// Plant ko type haru 🌵🌸
enum PlantType {
  seedling, // Nallo paileko
  succulent, // Sukkha plant
  flower, // Phool
  tree, // Rukh
}

// Plant ko structure
class Plant extends Equatable {
  final String id; // Unique ID
  final PlantType type; // Plant ko type
  final int growthLevel; // 0-100% samma grow vako
  final int waterToday; // Aaja pani haleko count
  final String habitId; // Kun habit sanga connected cha

  const Plant({
    required this.id,
    required this.type,
    required this.growthLevel,
    required this.waterToday,
    required this.habitId,
  });

  // Plant ko type anusar icon path dincha
  String get animationPath {
    switch (type) {
      case PlantType.seedling:
        return 'assets/animations/seedling.json';
      case PlantType.succulent:
        return 'assets/animations/succulent.json';
      case PlantType.flower:
        return 'assets/animations/flower.json';
      case PlantType.tree:
        return 'assets/animations/tree.json';
    }
  }

  @override
  List<Object?> get props => [id, type, growthLevel, waterToday, habitId];
}

//different types of plants

enum PlantType { seedling, succulent, flower, cactus, tree }

//Plants entity

class Plant {
  final String id;
  final PlantType type;
  final int growthLevel;
  final int waterNeeded;
  final bool isUnlocked;

  const Plant({
    required this.id,
    required this.type,
    required this.growthLevel,
    required this.waterNeeded,
    required this.isUnlocked,
  });
}

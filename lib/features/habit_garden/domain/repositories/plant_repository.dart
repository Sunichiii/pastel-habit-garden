import 'package:pastel_habit_garden/features/habit_garden/domain/entities/plant.dart';

abstract class PlantRepository{
  Future<List<Plant>> getPlants();
  Future<void> waterPlant(String plantId);
  Future<void> unlockNewPlant(String habitId, PlantType type);
}
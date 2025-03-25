import '../entities/plant.dart';
import '../repositories/get_habits.dart';
import '../repositories/plant_repository.dart';

// Naya plant unlock garne use case 🔓
class UnlockPlant implements UseCase<void, UnlockPlantParams> {
  final PlantRepository repository;

  const UnlockPlant(this.repository);

  @override
  Future<void> call(UnlockPlantParams params) async {
    return await repository.unlockNewPlant(
      params.habitId,
      params.plantType,
    );  // Repo lai unlock gardai bhanne
  }
}

// UnlockPlant use case ko parameters
class UnlockPlantParams {
  final String habitId;
  final PlantType plantType;

  const UnlockPlantParams({
    required this.habitId,
    required this.plantType,
  });
}
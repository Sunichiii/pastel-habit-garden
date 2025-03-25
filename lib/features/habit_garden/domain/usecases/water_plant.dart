import 'package:pastel_habit_garden/features/habit_garden/domain/repositories/plant_repository.dart';
import 'package:pastel_habit_garden/features/habit_garden/domain/usecases/usecase.dart';

class WaterPlant implements Usecase<void, String>{
  final PlantRepository repository;
   const WaterPlant(this.repository);

   @override
  Future<void> call(String plantId)async {

    return await repository.waterPlant(plantId);
  }
}
import 'package:pastel_habit_garden/features/habit_garden/domain/repositories/plant_repository.dart';
import 'package:pastel_habit_garden/features/habit_garden/domain/usecases/usecase.dart';

import '../entities/plant.dart';

class GetPlant implements Usecase<List<Plant>, NoParams>{
  final PlantRepository repository;
  const GetPlant(this.repository);

  @override
  Future<List<Plant>> call(NoParams params) async{
    // TODO: implement call
    return await repository.getPlants();
  }
}
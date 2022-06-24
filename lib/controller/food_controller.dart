import 'package:get/get.dart';
import 'package:task/database_manager/database_manager.dart';

import '../model/food.dart';

class FoodController extends GetxController {
  final RxList<Food> _foodList = <Food>[].obs;

  RxList<Food> get foodList => _foodList;

  fetchFoodList() async {
    List<Food> res = await DatabaseManager().getFoodList();
    if(res == null) {
      print("error retrieving food list");
    }else{
      _foodList.value = res;
      update();
    }
  }
  
}
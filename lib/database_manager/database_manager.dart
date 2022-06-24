import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:task/model/food.dart';
class DatabaseManager{
  final CollectionReference foodReference = FirebaseFirestore.instance.collection('food');

  Future getFoodList() async {
    List<Food> foodList = [];
    try {
      await foodReference.get().then((value) {
        value.docs.forEach((element) {
           foodList.add(Food.fromJSon(element.data()));
        });
      });
    }
    catch(e) {
      return null;
    }
  }
}
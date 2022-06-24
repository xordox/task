class Food{
  String name;
  String category;

  Food({required this.name, required this.category});

  factory Food.fromJSon(Map<String, dynamic>json){
    return Food(
      name: json["name"]??"",
      category: json["category"]??"",
    );
  }

  Map<String, String> toJson(){
    return {
      "name": name,
      "category":category
    };
  }
}
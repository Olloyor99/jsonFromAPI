import 'package:json_annotation/json_annotation.dart';
part 'secondmodel.g.dart';

@JsonSerializable()
class SecondNewApi {
  SecondNewApi({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.images,
    this.categoryId,
  });

  int? id;
  String? title;
  int? price;
  String? description;
  Category? category;
  List<String>? images;
  int? categoryId;

  factory SecondNewApi.fromJson(Map<String, dynamic> json) => SecondNewApi(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        description: json["description"],
        category: Category.fromJson(json["category"]),
        images: List<String>.from(json["images"].map((x) => x)),
        categoryId: json["categoryId"] == null ? null : json["categoryId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category!.toJson(),
        "images": List<dynamic>.from(images!.map((x) => x)),
        "categoryId": categoryId == null ? null : categoryId,
      };
}

@JsonSerializable()
class Category {
  Category({
    this.id,
    this.name,
    this.image,
    this.keyLoremSpace,
  });

  int? id;
  Name? name;
  String? image;
  String? keyLoremSpace;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: nameValues.map![json["name"]],
        image: json["image"],
        keyLoremSpace:
            json["keyLoremSpace"] == null ? null : json["keyLoremSpace"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": nameValues.reverse[name],
        "image": image,
        "keyLoremSpace": keyLoremSpace == null ? null : keyLoremSpace,
      };
}

enum Name { SHOES, ELECTRONICS, OTHERS, CLOTHES, FURNITURE }

final nameValues = EnumValues({
  "Clothes": Name.CLOTHES,
  "Electronics": Name.ELECTRONICS,
  "Furniture": Name.FURNITURE,
  "Others": Name.OTHERS,
  "Shoes": Name.SHOES
});

@JsonSerializable()
class EnumValues {
  Map<String, dynamic>? map;
  Map<dynamic, String>? reverseMap;

  EnumValues(this.map);

  Map<dynamic, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}

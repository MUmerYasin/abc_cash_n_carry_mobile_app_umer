// // To parse this JSON data, do
// //     final welcome = welcomeFromJson(jsonString);
// import 'dart:convert';
//
// SingleProductModelForJSON welcomeFromJson(String str) => SingleProductModelForJSON.fromJson(json.decode(str));
//
// String welcomeToJson(SingleProductModelForJSON data) => json.encode(data.toJson());
//
// class SingleProductModelForJSON {
//   SingleProductModelForJSON({
//     required this.id,
//     required this.title,
//     required this.price,
//     required this.description,
//     required this.category,
//     required this.image,
//     // this.rating,
//   });
//
//   int id;
//   String title;
//   double price;
//   String description;
//   String category;
//   String image;
//   // SingleProductRating? rating;
//
//   // factory SingleProductModelForJSON.fromJson(Map<String, dynamic> json) => SingleProductModelForJSON(
//   factory SingleProductModelForJSON.fromJson(Map<String, dynamic> json) => SingleProductModelForJSON(
//     id: json["id"],
//     title: json["title"],
//     price: json["price"].toDouble(),
//     description: json["description"],
//     category: json["category"],
//     image: json["image"],
//     // rating: SingleProductRating.fromJson(json["rating"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "title": title,
//     "price": price,
//     "description": description,
//     "category": category,
//     "image": image,
//     // "rating": rating!.toJson(),
//   };
// }
//
// // class SingleProductRating {
// //   SingleProductRating({
// //     this.rate,
// //     this.count,
// //   });
// //
// //   double? rate;
// //   int? count;
// //
// //   factory SingleProductRating.fromJson(Map<String, dynamic> json) => SingleProductRating(
// //     rate: json["rate"].toDouble(),
// //     count: json["count"],
// //   );
// //
// //   Map<String, dynamic> toJson() => {
// //     "rate": rate,
// //     "count": count,
// //   };
// // }

// To parse this JSON data, do
//
//     final singleProductModelForJson = singleProductModelForJsonFromJson(jsonString);
// To parse this JSON data, do
//
//     final singleProductModelForJsonToJson = singleProductModelForJsonToJsonFromJson(jsonString);

// Postman Echo is service you can use to test your REST clients and make sample API calls.
// It provides endpoints for `GET`, `POST`, `PUT`, various auth mechanisms and other utility
// endpoints.
//
// The documentation for the endpoints as well as example responses can be found at
// [https://postman-echo.com](https://postman-echo.com/?source=echo-collection-app-onboarding)
// To parse this JSON data, do
//
//     final singleProductModelForJson = singleProductModelForJsonFromJson(jsonString);

//-------------------------------------
//
// import 'dart:convert';
//
// // SingleProductModelForJson singleProductModelForJsonFromJson(String str) => SingleProductModelForJson.fromJson(json.decode(str));
// //
// // String singleProductModelForJsonToJson(SingleProductModelForJson data) => json.encode(data.toJson());
//
// List<SingleProductModelForJson> productFromJson(String str) =>
//     List<SingleProductModelForJson>.from(
//         json.decode(str).map((x) => SingleProductModelForJson.fromJson(x)));
//
// String productToJson(List<SingleProductModelForJson> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class SingleProductModelForJson {
//   SingleProductModelForJson({
//     required this.id,
//     required this.title,
//     required this.price,
//     required this.description,
//     required this.category,
//     required this.image,
//     // required this.rating,
//   });
//
//   int id;
//   String title;
//   double price;
//   String description;
//   String category;
//   String image;
//   // Rating rating;
//
//   factory SingleProductModelForJson.fromJson(Map<String, dynamic> json) => SingleProductModelForJson(
//     id: json["id"],
//     title: json["title"],
//     price: json["price"].toDouble(),
//     description: json["description"],
//     category: json["category"],
//     image: json["image"],
//     // rating: Rating.fromJson(json["rating"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "title": title,
//     "price": price,
//     "description": description,
//     "category": category,
//     "image": image,
//     // "rating": rating.toJson(),
//   };
// }
//
// // class Rating {
// //   Rating({
// //     this.rate,
// //     this.count,
// //   });
// //
// //   double rate;
// //   int count;
// //
// //   factory Rating.fromJson(Map<String, dynamic> json) => Rating(
// //     rate: json["rate"].toDouble(),
// //     count: json["count"],
// //   );
// //
// //   Map<String, dynamic> toJson() => {
// //     "rate": rate,
// //     "count": count,
// //   };
// // }

class SingleProductModelForJson {
  late int id;
  late String title;
  late double price;
  late String description;
  late String category;
  late String image;

  // late Rating rating;

  SingleProductModelForJson({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    // required this.rating
  });

  SingleProductModelForJson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
    // rating = (json['rating'] != null ? new Rating.fromJson(json['rating']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['description'] = this.description;
    data['category'] = this.category;
    data['image'] = this.image;
    // if (this.rating != null) {
    //   data['rating'] = this.rating.toJson();
    // }
    return data;
  }
}

// class Rating {
//   late double rate;
//   late int count;
//
//   Rating({required this.rate, required this.count});
//
//   Rating.fromJson(Map<String, dynamic> json) {
//     rate = json['rate'];
//     count = json['count'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['rate'] = this.rate;
//     data['count'] = this.count;
//     return data;
//   }
// }

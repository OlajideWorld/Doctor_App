import 'dart:convert';

ServiceResponse serviceResponseFromJson(String str) =>
    ServiceResponse.fromJson(json.decode(str));

String serviceResponseToJson(ServiceResponse data) =>
    json.encode(data.toJson());

class ServiceResponse {
  List<Datum> data;

  ServiceResponse({
    required this.data,
  });

  factory ServiceResponse.fromJson(Map<String, dynamic> json) {
    var dataList = json['data'] as List<dynamic>?;

    if (dataList == null) {
      throw ArgumentError('Invalid data format');
    }

    return ServiceResponse(
      data: dataList.map((item) => Datum.fromJson(item)).toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  int id;
  String name;
  String slug;
  String status;
  String price;
  String photo;
  String description;
  String createdAt;
  String updatedAt;

  Datum({
    required this.id,
    required this.name,
    required this.slug,
    required this.status,
    required this.price,
    required this.photo,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) {
    return Datum(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      slug: json["slug"] ?? "",
      status: json["status"] ?? "",
      price: json["price"] ?? "",
      photo: json["photo"] ?? "",
      description: json["description"] ?? "",
      createdAt: json["created_at"] ?? "",
      updatedAt: json["updated_at"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "status": status,
        "price": price,
        "photo": photo,
        "description": description,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}

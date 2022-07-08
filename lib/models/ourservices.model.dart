import 'package:equatable/equatable.dart';

class OurServicesModel extends Equatable {

  final String id;
  final String title;
  final String subtitle;
  final String imageUrl;

  OurServicesModel({
    required this.id,
    this.title = "",
    this.subtitle = "",
    this.imageUrl = ""
  });

  factory OurServicesModel.fromJson(String id, Map<String, dynamic> json) => OurServicesModel(
    id: id,
    title : json['title'].toString(),
    subtitle : json['subtitle'].toString(),
    imageUrl: json['imageUrl'].toString()
  );

  @override
  List<Object?> get props => [id, title, subtitle, imageUrl];

}
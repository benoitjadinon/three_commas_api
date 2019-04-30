import 'package:json_annotation/json_annotation.dart';

part 'error.g.dart';

@JsonSerializable(nullable: false)
class ERROR {
  String error;

  @JsonKey(nullable: true)
  String error_description;

  @JsonKey(nullable: true)
  Map<String, List<String>> error_attributes;

  ERROR();

  factory ERROR.fromJson(Map<String, dynamic> json) => _$ERRORFromJson(json);
  Map<String, dynamic> toJson() => _$ERRORToJson(this);
}
import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

/// Portfolio project synchronized with the Django REST Framework API.
@JsonSerializable(fieldRename: FieldRename.snake)
class Project {
  const Project({
    this.id,
    required this.projectName,
    required this.projectDescription,
    required this.projectType,
    this.media = "",
    this.projectUrl = "",
  });

  
  factory Project.fromJson(Map<String, dynamic> json) =>
    _$ProjectFromJson(json);

  @JsonKey(includeToJson: false)
  final String? id;
  
  final String projectName;
  final String projectDescription;
  final String projectType;

  @JsonKey(defaultValue: '')
  final String media;
 
  @JsonKey(defaultValue: '')
  final String projectUrl;

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}
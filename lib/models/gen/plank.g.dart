// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../plank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlankImpl _$$PlankImplFromJson(Map<String, dynamic> json) => _$PlankImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      level: json['level'] as String,
      duration: (json['duration'] as num).toInt(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$PlankImplToJson(_$PlankImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'level': instance.level,
      'duration': instance.duration,
      'description': instance.description,
    };

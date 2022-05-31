// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokeModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pokemon _$PokemonFromJson(Map<String, dynamic> json) => Pokemon(
      id: json['id'] as int?,
      num: json['num'] as String?,
      name: json['name'] as String?,
      img: json['img'] as String?,
      type: (json['type'] as List<dynamic>?)?.map((e) => e as String).toList(),
      height: json['height'] as String?,
      weight: json['weigth'] as String?,
      candy: json['candy'] as String?,
      candyCount: json['candyCount'] as int?,
      egg: json['egg'] as String?,
      spawnChance: (json['spawnChance'] as num?)?.toDouble(),
      avgSpawns: (json['avgSpawns'] as num?)?.toDouble(),
      spawnTime: json['spawnTime'] as String?,
      multipliers: (json['multipliers'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      weaknesses: (json['weaknesses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      prevEvolution: (json['prexEvolution'] as List<dynamic>?)
          ?.map((e) => Evolution.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextEvolution: (json['nextEvolution'] as List<dynamic>?)
          ?.map((e) => Evolution.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonToJson(Pokemon instance) => <String, dynamic>{
      'id': instance.id,
      'num': instance.num,
      'name': instance.name,
      'img': instance.img,
      'type': instance.type,
      'height': instance.height,
      'weigth': instance.weight,
      'candy': instance.candy,
      'candyCount': instance.candyCount,
      'egg': instance.egg,
      'spawnChance': instance.spawnChance,
      'avgSpawns': instance.avgSpawns,
      'spawnTime': instance.spawnTime,
      'multipliers': instance.multipliers,
      'weaknesses': instance.weaknesses,
      'prexEvolution': instance.prevEvolution,
      'nextEvolution': instance.nextEvolution,
    };

Evolution _$EvolutionFromJson(Map<String, dynamic> json) => Evolution(
      num: json['num'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$EvolutionToJson(Evolution instance) => <String, dynamic>{
      'num': instance.num,
      'name': instance.name,
    };

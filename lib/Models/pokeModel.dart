// To parse this JSON data, do
//
//     final pokemon = pokemonFromJson(jsonString);
import 'package:json_annotation/json_annotation.dart';

part 'pokeModel.g.dart';

@JsonSerializable()
class Pokemon { 
    Pokemon({
        this.id,
        this.num,
        this.name,
        this.img,
        this.type,
        this.height,
        this.weight,
        this.candy,
        this.candyCount,
        this.egg,
        this.spawnChance,
        this.avgSpawns,
        this.spawnTime,
        this.multipliers,
        this.weaknesses,
        this.prevEvolution,
        this.nextEvolution,
    });
    @JsonKey(name : "id")
    int? id; 
    @JsonKey(name : "num")
    String? num;
    @JsonKey(name : "name" )
    String? name;
    @JsonKey(name :"img" )
    String? img;
    @JsonKey(name : "type")
    List<String>? type;
    @JsonKey(name :  "height")
    String? height;
    @JsonKey(name : "weigth")
    String? weight;
    @JsonKey(name :  "candy")
    String? candy;
    @JsonKey(name : "candyCount")
    int? candyCount;
    @JsonKey(name :"egg" )
    String? egg;
    @JsonKey(name : "spawnChance")
    double? spawnChance;
    @JsonKey(name :"avgSpawns" )
    double? avgSpawns;
    @JsonKey(name : "spawnTime" )
    String? spawnTime;
    @JsonKey(name : "multipliers" )
    List<double>? multipliers;
    @JsonKey(name : "weaknesses" )
    List<String>? weaknesses;
    @JsonKey(name :"prexEvolution" )
    List<Evolution>? prevEvolution;
    @JsonKey(name :"nextEvolution" )
    List<Evolution>? nextEvolution;
    Map<String, dynamic> toJson() => _$PokemonToJson(this);

  //fromJson
  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}
@JsonSerializable()
class Evolution {
    Evolution({
        this.num,
        this.name,
    });
    @JsonKey(name : "num")
    String? num;
    @JsonKey(name : "name")
    String? name;
     Map<String, dynamic> toJson() => _$EvolutionToJson(this);
     factory Evolution.fromJson(Map<String, dynamic> json) =>
      _$EvolutionFromJson(json);
} 

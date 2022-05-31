import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pakodex/Contants/contants.dart';
import 'package:pakodex/Models/pokeModel.dart';

class PokeImages extends StatelessWidget {
  final Pokemon myPokemon;
  const PokeImages({Key? key, required this.myPokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint(myPokemon.img);
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset("assets/images/pokeball.png",
          width: Constants.pokeSize(),
          fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: CachedNetworkImage(
              errorWidget: (context, url, error) => const Icon(Icons.error),
              progressIndicatorBuilder: (context, url, progress) =>
                  const CircularProgressIndicator.adaptive(),
              imageUrl: myPokemon.img ?? "",
              width: Constants.pokeSize(),
              fit: BoxFit.fitHeight),
        ),
        // Image.network("${myPokemon.img}"),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pakodex/Contants/contants.dart';
import 'package:pakodex/Contants/uiHelper.dart';
import 'package:pakodex/Models/pokeModel.dart';
import 'package:pakodex/Widgets/pokeImages.dart';

class PokeCard extends StatelessWidget {
  final Pokemon poke;
   PokeCard({Key? key, required this.poke}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Helper.getColorFromType(poke.type![0]),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: Constants.responsivePadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
             Text(poke.name ?? 'N/A' , style: Constants.pokeTextStyle(),),
             Chip(label: Text(poke.type![0])),
             Expanded(child: PokeImages(myPokemon : poke)),
              
            ],
          ),
        ),
      ),
    );
  }
}

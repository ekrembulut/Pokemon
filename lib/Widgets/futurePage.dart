import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pakodex/Models/pokeModel.dart';
import 'package:pakodex/Sources/pakoSource.dart';
import 'package:pakodex/Widgets/pokemonCard.dart';

class FuturuList extends StatefulWidget {
  const FuturuList({Key? key}) : super(key: key);

  @override
  State<FuturuList> createState() => _FuturuListState();
}

class _FuturuListState extends State<FuturuList> {
  late Future<List<Pokemon>> _pokemons;
  @override
  void initState() {
    super.initState();
    _pokemons = MySource.getPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemon>>(
      future: _pokemons,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Pokemon> myData = snapshot.data ?? [];
          return GridView.builder(
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: ScreenUtil().orientation == Orientation.portrait ? 2 : 4),
              itemBuilder: (context, index) {
                return PokeCard(poke: myData[index]);
              });
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return const Center(child: CircularProgressIndicator.adaptive());
      },
    );
  }
}

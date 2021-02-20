import 'package:flutter/material.dart';
import 'package:flutter_application_1/pokepoke.dart';

class PokeDetail extends StatelessWidget {
  final Pokemon pokemon;

  PokeDetail({this.pokemon});

  bodyWidget(BuildContext context) => Stack(
        children: <Widget>[
          Positioned(
              height: MediaQuery.of(context).size.height / 1.6,
              width: MediaQuery.of(context).size.width - 20,
              left: 10.0,
              top: MediaQuery.of(context).size.height * 0.1,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    SizedBox(
                    height: 70.0,
                  ),


                    Text(
                      pokemon.name,
                      style: TextStyle(
                          fontSize: 26.0, fontWeight: FontWeight.bold),
                    ),
                    Text("Height: ${pokemon.height}"),
                    Text("Weight: ${pokemon.weight}"),
                    Text("Types", style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: pokemon.type
                          .map((t) => FilterChip(
                              backgroundColor: Colors.brown,
                              label: Text(
                                t,
                                style: TextStyle(color: Colors.white70),
                              ),
                              onSelected: (b) {}))
                          .toList(),
                    ),
                    Text(
                      "Weakness",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: pokemon.weaknesses
                          .map((t) => FilterChip(
                              backgroundColor: Colors.redAccent[700],
                              label: Text(
                                t,
                                style: TextStyle(color: Colors.white70),
                              ),
                              onSelected: (b) {}))
                          .toList(),
                    ),
                    Text("Next Evolution",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Row(
<<<<<<< HEAD
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: pokemon.nextEvolution
                                ?.map((n) => FilterChip(
                                    backgroundColor: Colors.green[900],
                                    label: Text(
                                      n.name,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onSelected: (b) {}))
                                ?.toList() ??
                            [Text('No more Evolutions')]),
                  ],
                ),
              )),
          Align(
=======
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: pokemon.nextEvolution
                          .map((n) => FilterChip(
                              backgroundColor: Colors.green[900],
                              label: Text(n.name,
                                  style: TextStyle(color: Colors.white70)),
                              onSelected: (b) {}))
                          .toList(),
                    ),
                  ],
                )),
          ),
         Align(
>>>>>>> parent of 8e754e8 (xxx)
            alignment: Alignment.topCenter,
            child: Hero(
                tag: pokemon.img,
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(pokemon.img))),
                )),
          )
        ],
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Text(pokemon.name),
      ),
      body: bodyWidget(context),
    );
  }
}

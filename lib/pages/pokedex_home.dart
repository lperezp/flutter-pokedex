import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _colorText = Color(0xFF303943);

class PokedexHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 40, right: 25, left: 25),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("./assets/img/pokebola_gray.png"),
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.topRight)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _AppBarPokedex(),
                Text(
                  "Pokedex",
                  style: TextStyle(
                      color: _colorText,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: (3 / 2),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: EdgeInsets.symmetric(horizontal: 25),
              children: [
                _CardPokedex(),
                _CardPokedex(),
                _CardPokedex(),
                _CardPokedex(),
                _CardPokedex(),
                _CardPokedex(),
                _CardPokedex(),
                _CardPokedex(),
                _CardPokedex(),
                _CardPokedex(),
                _CardPokedex(),
                _CardPokedex(),
                _CardPokedex(),
              ],
            ),
          )
        ],
      )),
    );
  }
}

class _AppBarPokedex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          icon: Icon(Icons.view_list),
          iconSize: 29,
        ),
      ],
    );
  }
}

class _CardPokedex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            top: 10,
            right: 10,
            child: (Text("#001",
                style: TextStyle(color: Color(0x1A000000), fontSize: 14))),
          ),
          Positioned(
            top: 24,
            left: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bulbasaur",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38),
                      color: Color(0x0DFFFFFF)),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                  child: Text(
                    "Fire",
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            right: 15,
            child: Image(
              image: AssetImage("./assets/img/pokemon.png"),height: 70,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Color(0xFFFB6C6C),
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage("./assets/img/pokedex.png"),
              fit: BoxFit.scaleDown,
              alignment: Alignment.bottomRight)),
    );
  }
}



import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:robodrive/game_state.dart';
import 'constants.dart';
import 'game_state.dart';


class GameBoard extends StatelessWidget {
  const GameBoard({ Key? key }) : super(key: key);

  List<Widget> _getChildren(GameState state) {
    List<Widget> children = [];
    for (int i=0; i<NUM_COL*NUM_ROW; i++) {
      if (state.cellValue[i] == 0)
        children.add(EmptyCell());
  //    else if (state.cellValue[i] == 1)
    //    children.add(TailCell());
      else if (state.cellValue[i] == state.length)
        children.add(HeadCell());
   //   else if (state.cellValue[i] < 0)
    //    children.add(FruitCell());
  //    else 
   //    children.add(BodyCell());
    }
    return children;
  }

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<GameState>(context);
    return Stack(
      children: [
        Align(
      child: AspectRatio(
        aspectRatio: NUM_COL/NUM_ROW,
        child: Container(
          color: Colors.white,
          child: GridView.count(
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: NUM_COL,
            children: _getChildren(state),
          ),
        ),
        ),
    ),
    state.isGameOver ? GameOver() : Container(),
      ],
    );
  }
}

class EmptyCell extends StatelessWidget {
  const EmptyCell({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    );
  }
}


class FruitCell extends StatelessWidget {
  const FruitCell({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Icon(
      Icons.star,
      color: Colors.lightBlue,
    ),
    );
  }
}


class TailCell extends StatelessWidget {
  const TailCell({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Icon(
      Icons.cloud,
      color: Colors.blue,
    ),
    );
  }
}



class BodyCell extends StatelessWidget {
  const BodyCell({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Icon(
      Icons.star,
      color: Colors.lightBlue,
    ),
    );
  }
}


class HeadCell extends StatelessWidget {
  const HeadCell({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<GameState>(context);
    return FittedBox(
      child: Transform.rotate(
        angle: getRotationAngle(state.currentDir) + pi * 0.5,
        child: Image(
          image: AssetImage('images/car.jpg'),
    ),
      ),
    );
  }
}


class GameOver extends StatelessWidget {
  const GameOver({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<GameState>(context);
        return Center(
      child: GestureDetector(
        onTap: () => state.startGame(),
        child: Text(
        'Game Over',
        style: TextStyle(
          fontSize: 36,
          color:  Colors.red,
          backgroundColor: Colors.grey,
        ),
      ),
      ),
    );
  }
}
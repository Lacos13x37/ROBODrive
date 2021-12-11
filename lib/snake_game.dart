import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controls.dart';
import 'game_board.dart';
import 'game_state.dart';
import 'scores.dart';





class Snakegame extends StatelessWidget {
  const Snakegame({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<GameState>(context);
    return Column(
      children: [
        Expanded(
          child: GameBoard(),
          flex: 3,
        ),
        Expanded(
          child: Controls(),
          flex: 2
        ),
        Expanded(
          child: Scores(state.currentScore, state.bestScore),
          flex: 1
        )
      ],
    );
  }
}
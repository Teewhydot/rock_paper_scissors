import 'dart:math';

import 'package:flutter/material.dart';

import '../constants.dart';
import '../rock-paper-scissors.dart';

class RPSEngine extends ChangeNotifier {
  int _userScore = 0;
  int _computerScore = 0;
  String _userChoice = '';
  String _computerChoice = '';
  String _result = '';

  int get userScore => _userScore;

  int get computerScore => _computerScore;

  String get userChoice => _userChoice;

  String get computerChoice => _computerChoice;

  String get result => _result;

  void resetGame() {
    _userScore = 0;
    _computerScore = 0;
    _userChoice = '';
    _computerChoice = '';
    _result = '';
    notifyListeners();
  }

  Widget getUserChoiceWidgetRPS() {
    if (_userChoice == 'Rock') {
      return RPSOptionWidget(rock, 'Rock', rockColor, () {});
    } else if (_userChoice == 'Paper') {
      return RPSOptionWidget(paper, 'Paper', paperColor, () {});
    } else if (_userChoice == 'Scissors') {
      return RPSOptionWidget(scissors, 'Scissors', scissorsColor, () {});
    } else {
      return Container();
    }
  }

  Widget getUserChoiceWidgetRPSLS() {
    if (_userChoice == 'Rock') {
      return RPSOptionWidget(rock, 'Rock', rockColor, () {});
    } else if (_userChoice == 'Paper') {
      return RPSOptionWidget(paper, 'Paper', paperColor, () {});
    } else if (_userChoice == 'Scissors') {
      return RPSOptionWidget(scissors, 'Scissors', scissorsColor, () {});
    } else if (_userChoice == 'Lizard') {
      return RPSOptionWidget(lizard, 'Lizard', lizardColor, () {});
    } else if (_userChoice == 'Spock') {
      return RPSOptionWidget(spock, 'Spock', spockColor, () {});
    } else {
      return Container();
    }
  }

  Widget getComputerChoiceWidgetRPSLS() {
    if (_computerChoice == 'Rock') {
      return RPSOptionWidget(rock, 'Rock', rockColor, () {});
    } else if (_computerChoice == 'Paper') {
      return RPSOptionWidget(paper, 'Paper', paperColor, () {});
    } else if (_computerChoice == 'Scissors') {
      return RPSOptionWidget(scissors, 'Scissors', scissorsColor, () {});
    } else if (_computerChoice == 'Lizard') {
      return RPSOptionWidget(lizard, 'Lizard', lizardColor, () {});
    } else if (_computerChoice == 'Spock') {
      return RPSOptionWidget(spock, 'Spock', spockColor, () {});
    } else {
      return Container();
    }
  }

  Widget getComputerChoiceWidgetRPS() {
    if (_computerChoice == 'Rock') {
      return RPSOptionWidget(rock, 'Rock', rockColor, () {});
    } else if (_computerChoice == 'Paper') {
      return RPSOptionWidget(paper, 'Paper', paperColor, () {});
    } else if (_computerChoice == 'Scissors') {
      return RPSOptionWidget(scissors, 'Scissors', scissorsColor, () {});
    } else {
      return Container();
    }
  }

  String getRPSResult() {
    if (_userChoice == 'Rock' && _computerChoice == 'Scissors') {
      _userScore++;
      notifyListeners();
      return 'You Win';
    } else if (_userChoice == 'Rock' && _computerChoice == 'Paper') {
      _computerScore++;
      notifyListeners();
      return 'You Lose';
    } else if (_userChoice == 'Paper' && _computerChoice == 'Rock') {
      _userScore++;
      notifyListeners();
      return 'You Win';
    } else if (_userChoice == 'Paper' && _computerChoice == 'Scissors') {
      _computerScore++;
      notifyListeners();
      return 'You Lose';
    } else if (_userChoice == 'Scissors' && _computerChoice == 'Paper') {
      _userScore++;
      notifyListeners();
      return 'You Win';
    } else if (_userChoice == 'Scissors' && _computerChoice == 'Rock') {
      _computerScore++;
      notifyListeners();
      return 'You Lose';
    } else {
      return 'Draw';
    }
  }

  String getRPSResultString() {
    if (_userChoice == 'Rock' && _computerChoice == 'Scissors') {
      return 'You Win';
    } else if (_userChoice == 'Rock' && _computerChoice == 'Paper') {
      return 'You Lose';
    } else if (_userChoice == 'Paper' && _computerChoice == 'Rock') {
      return 'You Win';
    } else if (_userChoice == 'Paper' && _computerChoice == 'Scissors') {
      return 'You Lose';
    } else if (_userChoice == 'Scissors' && _computerChoice == 'Paper') {
      return 'You Win';
    } else if (_userChoice == 'Scissors' && _computerChoice == 'Rock') {
      return 'You Lose';
    } else {
      return 'Draw';
    }
  }

  String getRPSLSResultString() {
    if (_userChoice == 'Rock' && _computerChoice == 'Scissors') {
      return 'You Win';
    } else if (_userChoice == 'Rock' && _computerChoice == 'Paper') {
      return 'You Lose';
    } else if (_userChoice == 'Paper' && _computerChoice == 'Rock') {
      return 'You Win';
    } else if (_userChoice == 'Paper' && _computerChoice == 'Scissors') {
      return 'You Lose';
    } else if (_userChoice == 'Scissors' && _computerChoice == 'Paper') {
      return 'You Win';
    } else if (_userChoice == 'Scissors' && _computerChoice == 'Rock') {
      return 'You Lose';
    } else if (_userChoice == 'Rock' && _computerChoice == 'Lizard') {
      return 'You Win';
    } else if (_userChoice == 'Rock' && _computerChoice == 'Spock') {
      return 'You Lose';
    } else if (_userChoice == 'Paper' && _computerChoice == 'Lizard') {
      return 'You Lose';
    } else if (_userChoice == 'Paper' && _computerChoice == 'Spock') {
      return 'You Win';
    } else if (_userChoice == 'Scissors' && _computerChoice == 'Lizard') {
      return 'You Win';
    } else if (_userChoice == 'Scissors' && _computerChoice == 'Spock') {
      return 'You Lose';
    } else if (_userChoice == 'Lizard' && _computerChoice == 'Rock') {
      return 'You Lose';
    } else if (_userChoice == 'Lizard' && _computerChoice == 'Spock') {
      return 'You Win';
    } else if (_userChoice == 'Lizard' && _computerChoice == 'Paper') {
      return 'You Win';
    } else if (_userChoice == 'Lizard' && _computerChoice == 'Scissors') {
      return 'You Lose';
    } else if (_userChoice == 'Spock' && _computerChoice == 'Rock') {
      return 'You Win';
    } else if (_userChoice == 'Spock' && _computerChoice == 'Paper') {
      return 'You Lose';
    } else if (_userChoice == 'Spock' && _computerChoice == 'Scissors') {
      return 'You Win';
    } else if (_userChoice == 'Spock' && _computerChoice == 'Lizard') {
      return 'You Lose';
    } else {
      return 'Draw';
    }
  }

  String getRPSLSResult() {
    if (_userChoice == 'Rock' && _computerChoice == 'Scissors') {
      _userScore++;
      notifyListeners();
      return 'You Win';
    } else if (_userChoice == 'Scissors' && _computerChoice == 'Rock') {
      _computerScore++;
      notifyListeners();
      return 'You Lose';
    } else if (_userChoice == 'Rock' && _computerChoice == 'Paper') {
      _computerScore++;
      notifyListeners();
      return 'You Lose';
    } else if (_userChoice == 'Paper' && _computerChoice == 'Rock') {
      _userScore++;
      notifyListeners();
      return 'You Win';
    } else if (_userChoice == 'Paper' && _computerChoice == 'Scissors') {
      _computerScore++;
      notifyListeners();
      return 'You Lose';
    } else if (_userChoice == 'Scissors' && _computerChoice == 'Paper') {
      _userScore++;
      notifyListeners();
      return 'You Win';
    } else if (_userChoice == 'Rock' && _computerChoice == 'Lizard') {
      _userScore++;
      notifyListeners();
      return 'You Win';
    } else if (_userChoice == 'Lizard' && _computerChoice == 'Rock') {
      _computerScore++;
      notifyListeners();
      return 'You Lose';
    } else if (_userChoice == 'Rock' && _computerChoice == 'Spock') {
      _computerScore++;
      notifyListeners();
      return 'You Lose';
    } else if (_userChoice == 'Spock' && _computerChoice == 'Rock') {
      _userScore++;
      notifyListeners();
      return 'You Win';
    } else if (_userChoice == 'Paper' && _computerChoice == 'Spock') {
      _userScore++;
      notifyListeners();
      return 'You Win';
    } else if (_userChoice == 'Spock' && _computerChoice == 'Paper') {
      _computerScore++;
      notifyListeners();
      return 'You Lose';
    } else if (_userChoice == 'Paper' && _computerChoice == 'Lizard') {
      _computerScore++;
      notifyListeners();
      return 'You Lose';
    } else if (_userChoice == 'Lizard' && _computerChoice == 'Paper') {
      _userScore++;
      notifyListeners();
      return 'You Win';
    } else if (_userChoice == 'Scissors' && _computerChoice == 'Lizard') {
      _userScore++;
      notifyListeners();
      return 'You Win';
    } else if (_userChoice == 'Lizard' && _computerChoice == 'Scissors') {
      _computerScore++;
      notifyListeners();
      return 'You Lose';
    } else if (_userChoice == 'Scissors' && _computerChoice == 'Spock') {
      _computerScore++;
      notifyListeners();
      return 'You Lose';
    } else if (_userChoice == 'Spock' && _computerChoice == 'Scissors') {
      _userScore++;
      notifyListeners();
      return 'You Win';
    } else if (_userChoice == 'Lizard' && _computerChoice == 'Spock') {
      _userScore++;
      notifyListeners();
      return 'You Win';
    } else if (_userChoice == 'Spock' && _computerChoice == 'Lizard') {
      _computerScore++;
      notifyListeners();
      return 'You Lose';
    } else {
      return 'Draw';
    }
  }

  void playRPS(String userChoice) {
    _userChoice = userChoice;
    _computerChoice = _getComputerChoiceRPS();
    _result = getRPSResultString();
    notifyListeners();
  }

  String _getComputerChoiceRPS() {
    var list = ['Rock', 'Paper', 'Scissors'];
    final _random = new Random();
    var computerChoice = list[_random.nextInt(list.length)];
    return computerChoice;
  }

  String _getComputerChoiceRPSLS() {
    var list = ['Rock', 'Paper', 'Scissors', 'Lizard', 'Spock'];
    final _random = new Random();
    var computerChoice = list[_random.nextInt(list.length)];
    return computerChoice;
  }

  void playRPSLS(String userChoice) {
    _userChoice = userChoice;
    _computerChoice = _getComputerChoiceRPSLS();
    _result = getRPSLSResult();
    notifyListeners();
  }
}

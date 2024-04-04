import 'package:flutter/material.dart';
import 'package:fortune_tiger_app/model/answer_item.dart';
import 'package:fortune_tiger_app/model/question_item.dart';
import 'package:fortune_tiger_app/pages/final_page.dart';
import 'package:fortune_tiger_app/pages/home_page.dart';
import 'package:fortune_tiger_app/pages/levels_page.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  List<QuestionItem> questionsFirst = [
    QuestionItem(
        title:
            ' What type of reinforcement schedule do many slot machines use?',
        answers: [
          AnswerItem(title: 'Fixed ratio', isCorrect: false),
          AnswerItem(title: ' Variable ratio', isCorrect: false),
          AnswerItem(title: ' Fixed interval', isCorrect: false),
          AnswerItem(title: ' Variable interval', isCorrect: true),
        ]),
    QuestionItem(
        title:
            'Which of the following is a characteristic of addictive slot machines?',
        answers: [
          AnswerItem(title: ' Predictable rewards', isCorrect: false),
          AnswerItem(title: 'Consistent losses', isCorrect: false),
          AnswerItem(title: 'Variable ratio reinforcement', isCorrect: true),
          AnswerItem(title: ' Fixed interval reinforcement', isCorrect: false),
        ]),
  ];
  List<QuestionItem> questionsSecond = [
    QuestionItem(title: 'What is the objective of blackjack?', answers: [
      AnswerItem(title: ' Get as close to 30 as possible', isCorrect: false),
      AnswerItem(
          title: 'Beat the dealer\'s hand without going over 21',
          isCorrect: true),
      AnswerItem(title: 'Match the dealer\'s hand exactly', isCorrect: false),
      AnswerItem(
          title: 'Reach a total of 20 before the dealer', isCorrect: false),
    ]),
    QuestionItem(
        title: 'In blackjack, what is the best possible hand?',
        answers: [
          AnswerItem(title: '21', isCorrect: true),
          AnswerItem(title: 'Blackjack', isCorrect: false),
          AnswerItem(title: '20', isCorrect: false),
          AnswerItem(title: '22', isCorrect: false),
        ]),
    QuestionItem(title: 'In Blackjack, what is a natural Blackjack?', answers: [
      AnswerItem(title: 'Any two cards that add up to 15', isCorrect: false),
      AnswerItem(title: 'An Ace and a King', isCorrect: false),
      AnswerItem(title: 'An Ace and any ten-valued card ', isCorrect: true),
      AnswerItem(title: 'Two face cards ', isCorrect: false),
    ]),
    QuestionItem(
        title:
            'You\'re dealt a 7 and a 3 in Blackjack. The dealer\'s face-up card is a 6. Should you hit or stand?',
        answers: [
          AnswerItem(title: 'Hit', isCorrect: true),
          AnswerItem(title: 'Stand', isCorrect: false),
          AnswerItem(title: 'Double Down', isCorrect: false),
          AnswerItem(title: 'Split', isCorrect: false),
        ]),
  ];
  List<QuestionItem> questionsThird = [
    QuestionItem(title: 'What can players bet on in roulette?', answers: [
      AnswerItem(title: ' Only specific numbers', isCorrect: false),
      AnswerItem(title: 'Only colors', isCorrect: false),
      AnswerItem(
          title: 'Various outcomes including numbers, colors, or ranges',
          isCorrect: true),
      AnswerItem(title: 'Only odd or even numbers', isCorrect: false),
    ]),
    QuestionItem(
        title: ' What are the colors on a standard roulette wheel?',
        answers: [
          AnswerItem(title: 'Red and black', isCorrect: true),
          AnswerItem(title: 'Blue and green', isCorrect: false),
          AnswerItem(title: 'Yellow and purple', isCorrect: false),
          AnswerItem(title: 'Red and green', isCorrect: false),
        ]),
    QuestionItem(
        title:
            ' In Roulette, the wheel has numbered slots and colored pockets (red or black). If the ball lands on a green pocket numbered 0 or 00, what happens to your bets on numbers 1-36?',
        answers: [
          AnswerItem(title: ' All bets win.', isCorrect: false),
          AnswerItem(title: ' All bets lose.', isCorrect: true),
          AnswerItem(title: 'Red bets win, black bets lose.', isCorrect: false),
          AnswerItem(title: ' Even bets win, odd bets lose.', isCorrect: false),
        ]),
    QuestionItem(
        title:
            'In Roulette, you can place a bet on a single number (Straight Up) or a group of numbers.  Which of these bets covers the most numbers on the wheel?',
        answers: [
          AnswerItem(title: ' Straight Up', isCorrect: false),
          AnswerItem(title: 'Line Bet', isCorrect: false),
          AnswerItem(title: 'Column Bet ', isCorrect: false),
          AnswerItem(title: ' Dozens Bet', isCorrect: true),
        ]),
    QuestionItem(
        title:
            'In Roulette, the croupier (dealer) spins the wheel and throws a small ball in the opposite direction. Where does the ball eventually land to determine the winning outcome?',
        answers: [
          AnswerItem(
              title:
                  ' In a slot with a playing card symbol (hearts, diamonds, etc.)',
              isCorrect: false),
          AnswerItem(
              title: 'On a numbered pocket (1-36) or the green 0 or 00.',
              isCorrect: true),
          AnswerItem(
              title: 'In a designated area marked "Winner"', isCorrect: false),
          AnswerItem(
              title:
                  'It doesn\'t matter where the ball lands, the croupier decides the winner.',
              isCorrect: false),
        ]),
    QuestionItem(
        title:
            'Imagine you place a bet on a single number (Straight Up) in Roulette. The ball lands on a different number, but it\'s the same color (red or black) as your chosen number. Do you win any money in this scenario?',
        answers: [
          AnswerItem(
              title: ' Yes, you win the full Straight Up payout (35:1).  ',
              isCorrect: false),
          AnswerItem(
              title: ' Yes, you win a smaller consolation prize.',
              isCorrect: false),
          AnswerItem(title: 'No, you lose your entire bet.', isCorrect: true),
          AnswerItem(
              title:
                  'It depends on whether the winning number is higher or lower than yours.',
              isCorrect: false),
        ]),
  ];
  List<QuestionItem> questionsFourth = [
    QuestionItem(title: ' What do players wager on in poker?', answers: [
      AnswerItem(title: ' The dealer\'s hand', isCorrect: false),
      AnswerItem(title: 'The number of cards drawn', isCorrect: false),
      AnswerItem(
          title: ' The strength of their hand compared to others',
          isCorrect: true),
      AnswerItem(title: 'The number of players at the table', isCorrect: false),
    ]),
    QuestionItem(
        title: 'Which factor plays a significant role in poker gameplay?',
        answers: [
          AnswerItem(title: ' Luck', isCorrect: false),
          AnswerItem(title: ' Random chance', isCorrect: false),
          AnswerItem(title: 'Psychological strategy', isCorrect: true),
          AnswerItem(title: ' Speed of play', isCorrect: false),
        ]),
    QuestionItem(
        title:
            'In Poker, what are the two hole cards you receive dealt face down at the beginning of a hand?',
        answers: [
          AnswerItem(title: 'Community cards', isCorrect: false),
          AnswerItem(title: ' Pocket cards', isCorrect: true),
          AnswerItem(title: ' Betting chips', isCorrect: false),
          AnswerItem(title: 'Discarded cards', isCorrect: false),
        ]),
    QuestionItem(
        title:
            'In Poker, after seeing the flop (the first three community cards revealed), a player decides not to bet or raise but wants to stay in the hand. What action would they take?',
        answers: [
          AnswerItem(title: ' Fold (discard their cards)', isCorrect: false),
          AnswerItem(
              title: ' Check (pass the turn without betting)', isCorrect: true),
          AnswerItem(title: 'Call (match the current bet)', isCorrect: false),
          AnswerItem(
              title: 'All-in (bet all their remaining chips)',
              isCorrect: false),
        ]),
    QuestionItem(
        title:
            'In Poker, what do you call the first betting round that happens after all players receive their two hole cards?',
        answers: [
          AnswerItem(title: 'Showdown', isCorrect: false),
          AnswerItem(title: 'Pre-Flop', isCorrect: false),
          AnswerItem(title: ' The Flop', isCorrect: false),
          AnswerItem(title: 'The Turn', isCorrect: true),
        ]),
    QuestionItem(
        title:
            'In Poker, a hand rankings chart shows which hands are stronger than others. Which of these hands is generally considered the weakest?',
        answers: [
          AnswerItem(title: 'Two Pair', isCorrect: false),
          AnswerItem(title: 'Three of a Kind', isCorrect: false),
          AnswerItem(title: 'Straight', isCorrect: false),
          AnswerItem(title: 'High Card', isCorrect: true),
        ]),
    QuestionItem(
        title:
            'In Poker, what happens to the pot (all the chips wagered in a hand) after the showdown (when all cards are revealed)?',
        answers: [
          AnswerItem(
              title: ' It\'s split evenly among all players.',
              isCorrect: false),
          AnswerItem(title: ' The dealer keeps it.', isCorrect: false),
          AnswerItem(
              title: ' The player with the funniest hand wins it.',
              isCorrect: false),
          AnswerItem(
              title: 'The player with the winning hand takes the entire pot.',
              isCorrect: true),
        ]),
    QuestionItem(
        title:
            'When playing Poker online, some players might use chat to interact with others. What kind of messages are generally considered inappropriate etiquette?',
        answers: [
          AnswerItem(
              title: 'Friendly greetings and congratulations.',
              isCorrect: false),
          AnswerItem(
              title: '  Insults or rude comments directed at other players.',
              isCorrect: true),
          AnswerItem(
              title: '  Strategic discussions about other players\' hands.',
              isCorrect: false),
        ]),
  ];
  List<QuestionItem> questionsFifth = [
    QuestionItem(title: 'What can players bet on in baccarat?', answers: [
      AnswerItem(title: 'Only the player\'s hand', isCorrect: false),
      AnswerItem(title: 'Only the banker\'s hand', isCorrect: false),
      AnswerItem(title: 'Only a tie', isCorrect: false),
      AnswerItem(
          title: 'The player\'s hand, the banker\'s hand, or a tie',
          isCorrect: true),
    ]),
    QuestionItem(title: 'What is the aim of baccarat?', answers: [
      AnswerItem(title: 'To have the highest hand value', isCorrect: true),
      AnswerItem(title: ' To match the dealer\'s hand', isCorrect: false),
      AnswerItem(
          title: ' To predict the outcome of the next hand', isCorrect: false),
      AnswerItem(
          title: 'To beat the banker\'s hand without going over 21',
          isCorrect: false),
    ]),
    QuestionItem(
        title: 'In Baccarat, the goal is to get a hand closer to what number?',
        answers: [
          AnswerItem(title: '10', isCorrect: true),
          AnswerItem(title: '15', isCorrect: false),
          AnswerItem(title: '21', isCorrect: false),
          AnswerItem(title: ' 52', isCorrect: false),
        ]),
    QuestionItem(
        title:
            'In Baccarat, you don\'t receive your own cards to hold. Instead, you bet on the outcome of two hands dealt: the "Player" hand and the "Banker" hand. Which hand has a higher starting advantage statistically?',
        answers: [
          AnswerItem(title: 'The Player hand', isCorrect: false),
          AnswerItem(title: 'The Banker hand', isCorrect: true),
          AnswerItem(title: 'There\'s no difference.', isCorrect: false),
          AnswerItem(title: 'It depends on the cards dealt.', isCorrect: false),
        ]),
    QuestionItem(
        title:
            'In Baccarat, face cards (Jack, Queen, King) and tens all count as what value?',
        answers: [
          AnswerItem(title: 'Their face value', isCorrect: false),
          AnswerItem(title: '1', isCorrect: false),
          AnswerItem(title: '0', isCorrect: true),
          AnswerItem(title: '11', isCorrect: false),
        ]),
    QuestionItem(
        title:
            'In Baccarat, after the initial two cards are dealt to each hand, a third card may be drawn under specific rules. When might a third card be dealt to the Player hand?',
        answers: [
          AnswerItem(title: 'Always', isCorrect: false),
          AnswerItem(title: 'Never', isCorrect: false),
          AnswerItem(
              title: ' Only if the Player\'s total is 8 or 9 ',
              isCorrect: true),
          AnswerItem(
              title:
                  'Only if the Player\'s total is higher than the Banker\'s total.',
              isCorrect: false),
        ]),
    QuestionItem(
        title:
            'In Baccarat, you can win by betting on the Player hand, the Banker hand, or a tie. Which bet typically offers the lowest payout?',
        answers: [
          AnswerItem(title: 'Player hand', isCorrect: false),
          AnswerItem(title: 'Tie', isCorrect: true),
          AnswerItem(title: 'Banker hand', isCorrect: false),
          AnswerItem(title: 'They all pay out the same.', isCorrect: false),
        ]),
    QuestionItem(
        title:
            'In Baccarat, how are winning bets on the Banker hand typically charged a commission?',
        answers: [
          AnswerItem(
              title: ' Only if the Banker wins with a total of 8 ',
              isCorrect: true),
          AnswerItem(
              title: 'Always, regardless of the outcome', isCorrect: false),
          AnswerItem(title: 'Never', isCorrect: false),
          AnswerItem(title: 'Only if the Player wins', isCorrect: false),
        ]),
  ];
  List<QuestionItem> questionsSixth = [
    QuestionItem(title: 'What type of game is craps?', answers: [
      AnswerItem(title: 'A card game ', isCorrect: false),
      AnswerItem(title: 'A dice game', isCorrect: true),
      AnswerItem(title: 'A slot machine game', isCorrect: false),
      AnswerItem(title: 'A roulette game', isCorrect: false),
    ]),
    QuestionItem(title: 'What are players betting on in craps?', answers: [
      AnswerItem(title: 'The dealer\'s hand', isCorrect: false),
      AnswerItem(title: 'The outcome of dice rolls', isCorrect: true),
      AnswerItem(title: 'The number of cards drawn', isCorrect: false),
      AnswerItem(title: ' The color of the dice', isCorrect: false),
    ]),
    QuestionItem(
        title:
            'In Craps, the dice are rolled to determine the outcome of a bet. What is the first roll called, where the outcome determines the flow of the game?',
        answers: [
          AnswerItem(title: ' Come-out roll  ', isCorrect: true),
          AnswerItem(title: ' Point roll', isCorrect: false),
          AnswerItem(title: ' Seven-out roll', isCorrect: false),
          AnswerItem(title: ' Winner\'s roll', isCorrect: false),
        ]),
    QuestionItem(
        title:
            'In Craps, on the come-out roll, what two numbers result in an immediate win for the shooter (the person rolling the dice)?',
        answers: [
          AnswerItem(title: '2 and 3', isCorrect: false),
          AnswerItem(title: '7 and 11', isCorrect: true),
          AnswerItem(title: '8 and 12', isCorrect: false),
          AnswerItem(title: '4 and 10', isCorrect: false),
        ]),
    QuestionItem(
        title:
            'In Craps, after a winning come-out roll (7 or 11), what happens next?',
        answers: [
          AnswerItem(
              title: 'The game ends, and a new round begins. ',
              isCorrect: true),
          AnswerItem(
              title: 'The shooter keeps rolling until they lose (seven-out).',
              isCorrect: false),
          AnswerItem(
              title: 'The dice are passed to a new player.', isCorrect: false),
          AnswerItem(title: 'All bets are doubled.', isCorrect: false),
        ]),
    QuestionItem(
        title:
            'In Craps, if the come-out roll is neither 7 nor 11 (it\'s a natural win for the shooter), what number becomes the "point"?',
        answers: [
          AnswerItem(
              title: 'The sum of the two dice rolled. ', isCorrect: true),
          AnswerItem(title: 'The highest number rolled.', isCorrect: false),
          AnswerItem(title: ' Always 7.', isCorrect: false),
          AnswerItem(title: 'It\'s chosen by the dealer.', isCorrect: false),
        ]),
    QuestionItem(
        title:
            'In Craps, after establishing a point, what outcome lets the shooter win and keeps them rolling?',
        answers: [
          AnswerItem(title: 'Rolling a 7', isCorrect: false),
          AnswerItem(
              title: 'Rolling any double (two of the same number)',
              isCorrect: false),
          AnswerItem(title: 'Rolling the point number again', isCorrect: true),
          AnswerItem(
              title: 'Rolling a number lower than the point.',
              isCorrect: false),
        ]),
    QuestionItem(
        title:
            'In Craps, what outcome immediately ends the shooter\'s turn and makes them lose (seven-out)?',
        answers: [
          AnswerItem(
              title: ' Rolling a double (two of the same number)',
              isCorrect: false),
          AnswerItem(title: 'Rolling their point number', isCorrect: false),
          AnswerItem(title: ' Rolling a 12  ', isCorrect: true),
          AnswerItem(
              title: ' Rolling a number lower than the point.',
              isCorrect: false),
        ]),
  ];
  List<QuestionItem> questionsSeventh = [
    QuestionItem(
        title: 'How many cards are players dealt in Pai Gow Poker?',
        answers: [
          AnswerItem(title: ' Five cards', isCorrect: false),
          AnswerItem(title: 'Seven cards', isCorrect: true),
          AnswerItem(title: ' Nine cards', isCorrect: false),
          AnswerItem(title: 'Ten cards', isCorrect: false),
        ]),
    QuestionItem(
        title: 'What must players do in Pai Gow Poker to win?',
        answers: [
          AnswerItem(
              title:
                  ' Create two poker hands: one with six cards and one with one card',
              isCorrect: false),
          AnswerItem(
              title:
                  'Create two poker hands: one with five cards and one with two cards',
              isCorrect: true),
          AnswerItem(
              title:
                  'Create two poker hands: one with four cards and one with three cards',
              isCorrect: false),
          AnswerItem(
              title:
                  ' Create two poker hands: one with seven cards and one with zero cards',
              isCorrect: false),
        ]),
    QuestionItem(
        title:
            'In Pai Gow Poker, how many total cards are used in a single game (not including the dealer\'s hand)?',
        answers: [
          AnswerItem(title: '21', isCorrect: false),
          AnswerItem(title: '35', isCorrect: false),
          AnswerItem(title: '42', isCorrect: true),
          AnswerItem(title: ' 52', isCorrect: false),
        ]),
    QuestionItem(
        title:
            'In Pai Gow Poker, after receiving seven cards, you create a high hand (five cards) and a low hand (two cards). What is the highest possible value a low hand can have?',
        answers: [
          AnswerItem(title: 'A pair (two of the same value)', isCorrect: false),
          AnswerItem(
              title: 'A straight (five consecutive cards)', isCorrect: false),
          AnswerItem(
              title: ' A flush (five cards of the same suit)',
              isCorrect: false),
          AnswerItem(
              title:
                  ' Jack or higher (two cards that are both a Jack or higher)',
              isCorrect: true),
        ]),
    QuestionItem(
        title:
            'In Pai Gow Poker, you can\'t see the dealer\'s cards, but you choose how to arrange your high and low hands (high or low).  What happens if both your high hand and low hand tie with the dealer\'s corresponding hands?',
        answers: [
          AnswerItem(title: ' The dealer always wins.', isCorrect: false),
          AnswerItem(title: ' The player always wins.', isCorrect: false),
          AnswerItem(
              title: ' It\'s a push (neither player wins or loses).',
              isCorrect: true),
          AnswerItem(
              title: ' You get to rearrange your hands and try again.',
              isCorrect: false),
        ]),
    QuestionItem(
        title:
            'In Pai Gow Poker, the Joker can be used strategically. What is one situation where the Joker might be valuable in your high hand?',
        answers: [
          AnswerItem(
              title: 'It can be used as a high card (like an Ace).',
              isCorrect: true),
          AnswerItem(
              title: 'It can only be used in the low hand.', isCorrect: false),
          AnswerItem(
              title: ' It must always be used as a wild card.',
              isCorrect: false),
          AnswerItem(
              title: 'It has no value in the high hand.', isCorrect: false),
        ]),
    QuestionItem(
        title:
            'Some Pai Gow Poker variations offer optional side bets. What is a common reason a player might place a side bet?',
        answers: [
          AnswerItem(
              title: ' To potentially win a larger payout than the main bet.',
              isCorrect: true),
          AnswerItem(
              title: 'To guarantee they will win at least something.',
              isCorrect: false),
          AnswerItem(
              title:
                  'To see the dealer\'s cards before making their high/low choices.',
              isCorrect: false),
          AnswerItem(
              title: 'Side bets are required in all Pai Gow Poker games.',
              isCorrect: false),
        ]),
    QuestionItem(
        title:
            'When playing Pai Gow Poker, what is the penalty for not being able to create a valid low hand (two cards that meet the minimum ranking requirement)?',
        answers: [
          AnswerItem(title: 'You lose the entire hand.', isCorrect: false),
          AnswerItem(
              title: ' You can\'t participate in the rest of the round.',
              isCorrect: false),
          AnswerItem(
              title: ' Your high hand is still considered.', isCorrect: true),
          AnswerItem(
              title: 'The penalty depends on the casino.', isCorrect: false),
        ]),
  ];
  int questionNumber = 0;
  QuestionItem currentQuestion = QuestionItem();
  int correctAnswers = 0;
  Map<int, QuestionItem> quastionMap = {};
  @override
  Widget build(BuildContext context) {
    if (currentLevel.levelNum == 1) {
      quastionMap = questionsFirst.asMap();
    } else if (currentLevel.levelNum == 2) {
      quastionMap = questionsSecond.asMap();
    } else if (currentLevel.levelNum == 3) {
      quastionMap = questionsThird.asMap();
    } else if (currentLevel.levelNum == 4) {
      quastionMap = questionsFourth.asMap();
    } else if (currentLevel.levelNum == 5) {
      quastionMap = questionsFifth.asMap();
    } else if (currentLevel.levelNum == 6) {
      quastionMap = questionsSixth.asMap();
    } else if (currentLevel.levelNum == 7) {
      quastionMap = questionsSeventh.asMap();
    }
    quastionMap.forEach((key, value) {
      if (key == questionNumber) {
        currentQuestion = value;
      }
    });
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/bg2.png'))),
          child: Column(
            children: [
              Container(
                height: 141,
                padding: const EdgeInsets.only(top: 40),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xFFCA0D07),
                      Color(0xFFFA4007),
                      Color(0xFFC50802)
                    ])),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset('assets/btn_back.png')),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Text(
                            'Question ${questionNumber + 1}/${quastionMap.length}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Shojumaru',
                              fontWeight: FontWeight.w700,
                              fontSize: 27,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = const Color(0XffFEBD31),
                            ),
                          ),
                          Text(
                            'Question ${questionNumber + 1}/${quastionMap.length}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'Shojumaru',
                              fontWeight: FontWeight.w700,
                              fontSize: 27,
                              color: Color(0xFF680F09),
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'Play',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Shojumaru',
                            color: Colors.transparent,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ]),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 34, bottom: 25),
                        child: SizedBox(
                          width: 253,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  currentQuestion.title!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontFamily: 'SF Compact',
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      getAnswers(),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }

  Widget getAnswers() {
    List<Widget> list = [];

    for (var answer in currentQuestion.answers!) {
      list.add(InkWell(
        onTap: () {
          if (answer.isCorrect!) {
            correctAnswers++;
          }
          if (questionNumber + 1 < quastionMap.length) {
            currentQuestion.isCorrect = answer.isCorrect;
            questionNumber++;
            setState(() {});
          } else {
            if (currentLevel.levelNum == level1.levelNum) {
              level1.isDone = true;
            } else if (currentLevel.levelNum == level2.levelNum) {
              level2.isDone = true;
            } else if (currentLevel.levelNum == level3.levelNum) {
              level3.isDone = true;
            } else if (currentLevel.levelNum == level4.levelNum) {
              level4.isDone = true;
            } else if (currentLevel.levelNum == level5.levelNum) {
              level5.isDone = true;
            } else if (currentLevel.levelNum == level6.levelNum) {
              level6.isDone = true;
            } else if (currentLevel.levelNum == level7.levelNum) {
              level7.isDone = true;
            }
            if (user.keyCount != null) {
              user.keyCount = user.keyCount! + correctAnswers * 2;
            } else {
              user.keyCount = correctAnswers * 2;
            }
            addToSharedP();
            Navigator.of(context).pushReplacement(
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => FinalPage(
                        keysCount: correctAnswers * 2,
                      )),
            );
          }
        },
        child: Container(
          width: 263,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF680F09), width: 2),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFF58A22),
                  Color(0xFFFEBD31),
                ],
              ),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                answer.title!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: 'SF Compact',
                    color: Color(0xFF680F09),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ));
      list.add(const SizedBox(
        height: 8,
      ));
    }

    return Column(
      children: list,
    );
  }
}

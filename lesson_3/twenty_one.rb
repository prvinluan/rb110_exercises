# TWENTY - ONE
################################################################################

# 1 - Set deck of cards
# 2 - Give player and dealer two cards each
# 3 - Reveal both players card and a dealers card (hide second card)
# 4 - If player hand is over 21, 'BUST' - GAME OVER!
# 5 - If player hand is equal or less than 21, ask player 'HIT' or 'STAY'
# 6 - If 'HIT'
#     a - Give new card
#     b - Reveal card
#     c - Update player hand
#     d - go to #4
# 7 - If 'STAY', dealer turn
# 8 - Reveal dealers second card
# 9 - If dealer hand is over 21, 'BUST' - GAME OVER!
# 10 - If dealer hand is 17 and up, dealer 'STAYS'
#      a - All hands are valued and compared
#      b - Hands closest to 21 wins - GAME OVER!
# 11 - If dealer hand is less than 17, dealer 'HITS'
#      a - Give new card
#      b - Reveal card
#      c - Update dealer hand
#      d - go to #9

################################################################################

# P - PROBLEM

# Create a game called 'TWENTY-ONE'.

# EXPLICIT:
# 1 - Given deck of 52 cards:
#     a - 4 suites (heart, diamond, spade, clover)
#     b - 13 values (2 - 10, king, queen, jack, ace)

# 2 - Mechanics:
#     a - Reach hand at 21 w/o going over - WIN!
#     b - Exceed hand over 21, 'BUST' - LOSE!

# 3 - 2 players: player and dealer (program)

# 4 - Each player is dealt 2 cards to start

# 5 - Three cards are revealed to player, 2 player's cards and a dealers card
#     a - Second dealers card is hidden until dealers turn

# 6 - Card values:
#     a - 2 thru 10 -- face value
#     b - King, queen and jack -- 10
#     c - Ace -- 1 or 11
#         c1 - Ace value is decided by program

# 7 - Turn: player
#     a - Player goes first
#     b - Player decides between:
#         b1 - 'HIT' - draw a new card
#         b2 - 'STAY' - dealer turn
#     c - Player can 'HIT' as many times
#     d - Player exceeds 21, 'BUST'

# 8 - Turn: dealer
#     a - Dealer plays when player decides 'STAY'
#     b - Dealer decides 'HIT' until hand reaches atleast 17
#     c - Dealer decides 'STAY' if 17 and over
#     d - If 'STAY', both hands are compared and hand closest
#         to 21 wins.

# 9 - Terminology:
#     a - deck: 52
#     b - suit: 4 (clovers, diamonds, hearts, spades)
#     c - rank: (2-10, king, queen, jack, ace)
#     d - "ace of spades", "7 of diamonds"
#     e - hand: players current cards

# E - EXAMPLE

# D - DATA STRUCTURE

# Card deck - data structure should allow the ff:
# 1 - Each card is unique (combination of ranks and suits)
# 2 - Each card has a value (king has a value of 10)
# 3 - Cards are retrieved at random from the deck
# 4 - Card can be used to retrieve it's value

# A new deck is created by retrieving all cards
# Deck is updated to not contain set of drawn cards

# deck - an array containing all 52 cards where each card is represented by
#        a nested array with two string elements: ["ace", "diamonds"]
# suits - array containing 4 suits: ["clovers", "diamonds", "hearts", "spades"]
# ranks - array containing 13 ranks:
#         ["2", "3", "4", "5", "6", "7", "8", "9", "10"] +
#         ["king", "queen", "jack", "ace"]
# card values - hash containing 13 key-value pairs where rank-card value:
#         { "ace" => [1, 11] }

# SUITS = ["clovers", "diamonds", "hearts", "spades"]
# RANKS = ["2", "3", "4", "5", "6", "7", "8", "9", "10"] +
#         ["king", "queen", "jack", "ace"]

# CARD_VALS = { "ace" => [1, 11],
#               "king" => 10,
#               "queen" => 10,
#               "jack" => 10,
#               "2" => 2,
#               "3" => 3,
#               "4" => 4,
#               "5" => 5,
#               "6" => 6,
#               "7" => 7,
#               "8" => 8,
#               "9" => 9,
#               "10" => 10
#             }

# # Initialize deck
# deck = RANKS.product(SUITS)
# deck.count # 52

# # Draw first 4 cards
# drawn_cards = deck.sample(4)

# # Display drawn cards and value
# drawn_cards.each do |card|
#   puts "#{card.first} of #{card.last}: #{CARD_VALS[card.first]}"
# end

# # 7 of clovers: 7
# # king of diamonds: 10
# # 10 of hearts: 10
# # ace of spades: [1, 11]

# # Update deck after each draw
# deck.reject! { |card| drawn_cards.include?(card) }
# deck.count # 48

# Player hand - data structure should allow the ff:
# 1 - Behave the same way as card deck (contain, retrieve)

# hand cards - [["ace", "diamonds"], ["4", "spades"]]

################################################################################
# A - ALGORITHM

# I. Start game
#    1 - Set two players, player and dealer
#    2 - Set deck of cards

# II. Set deck of cards
#     1 - Create variable for card ranks, initialize with 13 ranks
#     2 - Create variable for card suits, initialize with 4 suits
#     3 - Create variable for deck of cards using combination of ranks and suits

# III. Draw first two cards
#      1 - Draw a random card from deck
#      2 - Remove drawn card from deck
#      3 - Give card to player
#      4 - Does player have two cards?
#          a - If true, exit
#          b - If false, #1
#      5 - Repeat for each player

# IV. Check total
#     1 - Retrieve total hand of player
#     2 - Count the number of aces in hand
#     3 - Subtract 10 for each ace while total is over 21

# V. Reveal cards
#    1 - Display all player's cards and total value
#    2 - Only display first card of dealer

# VI. Players decides next move
#     1 - Ask player 'HIT' or 'STAY'
#     2 - If 'HIT'
#         a - Deal new card
#         b - Check total if over or under 21
#         c - If over, BUST - GAME OVER!
#         d - If under or equal to 21, go to # 1
#     3 - If 'STAY'
#         a - Dealer plays

# VII. Dealers turn
#      1 - Reveal all dealers cards and total
#      2 - Check total if over or under 21
#      3 - Dealer will 'HIT' or 'STAY'
#      4 - If total is under 17, dealer will 'HIT'
#          a - Deal new card
#          b - Check total
#          c - If over, BUST - GAME OVER!
#          d - If under 21, go to # 1
#      5 - If total is 17 and over, dealer will 'STAY'
#          a - Dealer turn is over

# VIII. Declaring the winner
#       1 - Compute totals for each player
#       2 - If player score is greater than dealer score
#           a - Display both scores
#           b - Declare player as winner
#       3 - If player score is less than dealer score
#           a - Display both scores
#           b - Declare dealer as winner
#       4 - If player score and dealer score is equal
#           a - Display both scores
#           b - Declare a tie

# IX. Exit game
#     1 - Display game finished message

################################################################################
# C - CODE
CARD_VALS = { "ace" => 11,
              "king" => 10,
              "queen" => 10,
              "jack" => 10,
              "2" => 2,
              "3" => 3,
              "4" => 4,
              "5" => 5,
              "6" => 6,
              "7" => 7,
              "8" => 8,
              "9" => 9,
              "10" => 10 }

SUITS = ["clovers", "diamonds", "hearts", "spades"]

RANKS = CARD_VALS.keys

RANK_INDX = 0
SUIT_INDX = 1

SORRY_MSG = "Sorry, invalid answer."

# PROMPT
def prompt(msg)
  puts "=> #{msg}"
end

# PLAYER READY?
def player_ready(msg)
  loop do
    prompt msg
    ans = gets.chomp
    break if ans.empty?
    prompt SORRY_MSG
  end
end

# SET GAME DECK
def set_deck
  RANKS.product(SUITS)
end

# rubocop: disable Layout/LineLength, Metrics/AbcSize
# GAME DISPLAY (CARD/TOTAL)
def display_hand(hsh_hand, hide_dealer)
  player = hsh_hand[:player]
  dealer = hsh_hand[:dealer]

  system "clear"
  puts "-----------------------------------------"
  puts "PLAYER CARDS:          | PLAYER TOTAL: #{total(player)}"
  puts "-----------------------------------------"
  current_hand(player)
  puts ""
  puts "-----------------------------------------"
  puts "DEALER CARDS:          | DEALER TOTAL: #{hide_dealer ? '[?]' : total(dealer)}"
  puts "-----------------------------------------"
  hide_dealer ? dealer_hides(dealer) : current_hand(dealer)
  puts ""
  puts "-----------------------------------------"
  puts ""
end
# rubocop: enable Layout/LineLength, Metrics/AbcSize

# DRAW CARD
def draw_card(deck)
  card = deck.sample
  deck.delete(card)
end

# DEAL PLAYER CARD
def deal_card(deck, hand)
  hand << draw_card(deck)
end

# OUTPUT CURRENT CARDS
def current_hand(hand)
  hand.each_with_index do |card, index|
    puts "#{index + 1}) #{card[RANK_INDX]} of #{card[SUIT_INDX]}"
  end
end

# HIDE HANDS
def dealer_hides(hand)
  hand.each_with_index do |card, index|
    if index == 1
      puts "#{index + 1}) [?]"
    else
      puts "#{index + 1}) #{card[RANK_INDX]} of #{card[SUIT_INDX]}"
    end
  end
end

# TOTAL
def total(hand)
  rank_values = hand.map { |card| card[RANK_INDX] }

  total = 0
  rank_values.each do |rank|
    total += CARD_VALS[rank]
  end

  rank_values.count("ace").times do |_|
    total -= 10 if total > 21
  end

  total
end

# TWENTY ONE?
def twenty_one?(hand)
  total(hand) == 21
end

# BUSTED?
def busted?(hand)
  total(hand) > 21
end

# DEALER STAYS?
def dealer_stays?(hand)
  total(hand) >= 17
end

# GAME RESULTS: GAME OVER OR STAY
def game_results(hsh_hand)
  p_score = total(hsh_hand[:player])
  d_score = total(hsh_hand[:dealer])

  return 1 if p_score > 21
  return 2 if d_score > 21
  return 3 if p_score > d_score
  return 4 if p_score == d_score
  return 5 if p_score < d_score
end

# GAME DISPLAY
def game_display(hsh_hand)
  p_score = total(hsh_hand[:player])
  d_score = total(hsh_hand[:dealer])

  case game_results(hsh_hand)
  when 1
    puts "PLAYER BUSTS - GAME OVER! Player: #{p_score}, Dealer: #{d_score}"
  when 2
    puts "DEALER BUSTS - GAME OVER! Player: #{p_score}, Dealer: #{d_score}"
  when 3
    puts "PLAYER WINS! Player: #{p_score}, Dealer: #{d_score}"
  when 4
    puts "IT'S A TIE!"
  when 5
    puts "DEALER WINS! Player: #{p_score}, Dealer: #{d_score}"
  end
end

# rubocop: disable Lint/UnreachableLoop
loop do # MAIN GAME LOOP
  # PLAY GAME
  game_deck = set_deck
  hands = { player: [],
            dealer: [] }

  hide_hand = true

  # INITIAL HANDS FOR TESTING/EDGE CASE:

  # hands = { player: [["10", "diamonds"], ["5", "clovers"]],
  #           dealer: [["10", "hearts"], ["ace", "spades"]]
  # }

  # DRAW INITIAL HAND FOR EACH PLAYER
  2.times do |_|
    deal_card(game_deck, hands[:player])
    deal_card(game_deck, hands[:dealer])
  end

  loop do # GAME LOOP
    # PLAYERS TURN
    loop do
      display_hand(hands, hide_hand)

      break if twenty_one?(hands[:player])

      move = ""
      loop do
        prompt "Hit or stay? Type 'h' or 's':"
        move = gets.chomp.downcase
        break if ["h", "s"].include?(move)
        prompt SORRY_MSG
      end

      deal_card(game_deck, hands[:player]) if move == "h"

      break if move == "s" ||
               busted?(hands[:player]) ||
               twenty_one?(hands[:player])
    end

    hide_hand = false

    # display_hand(hands, hide_hand)
    if busted?(hands[:player]) || twenty_one?(hands[:dealer])
      break game_display(hands)
    end

    player_ready("Dealer's turn to play, press 'enter' to continue:")

    # DEALERS TURN
    loop do
      display_hand(hands, hide_hand)

      break if dealer_stays?(hands[:dealer]) || busted?(hands[:dealer])

      deal_card(game_deck, hands[:dealer])

      player_ready("Dealer chose to 'hit', press 'enter' to continue:")
    end

    display_hand(hands, hide_hand)
    break game_display(hands)
  end

  prompt "Press 'enter' to play again or any key to exit game:"
  ans = gets.chomp
  break unless ans.empty?
end

prompt "Thanks for playing!"
# rubocop: enable Lint/UnreachableLoop

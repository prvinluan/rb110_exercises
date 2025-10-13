# NOTE ON TWENTY-ONE BONUS FEATURES:

# Source code is provided from the possible solution to twenty-one
# exercises, it was then refactored and reworked according to the
# bonus guidelines, which are then my own solutions.

################################################################################

SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

WIN_GAME = 5
WIN_SCORE = 21
STAY_SCORE = 17

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > WIN_SCORE
  end

  sum
end

def busted?(total)
  total > WIN_SCORE
end

def dealer_stays?(dealer_total)
  dealer_total >= STAY_SCORE
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(dealer_total, player_total)
  if player_total > WIN_SCORE
    :player_busted
  elsif dealer_total > WIN_SCORE
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(result)
  # result = detect_result(dealer_total, player_total)
  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def conclude_game(dealer_cards, player_cards, dealer_total, player_total, result)
  puts "=============="
  prompt "Dealer has #{dealer_cards}, for a total of: #{dealer_total}"
  prompt "Player has #{player_cards}, for a total of: #{player_total}"
  puts "=============="

  display_result(result)
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def winner_scores(game_scores, result)
  if [:player, :dealer_busted].include?(result)
    game_scores[:player] += 1
  elsif [:dealer, :player_busted].include?(result)
    game_scores[:dealer] += 1
  end
end

def game_winner?(game_scores)
  game_scores[:player] == WIN_GAME || game_scores[:dealer] == WIN_GAME
end

def declare_winner(game_scores)
  if game_scores[:player] == WIN_GAME
    prompt "Player wins the game!"
  else
    prompt "Dealer wins the game!"
  end
end

def enter_to_continue
  loop do
    prompt "Press 'enter' key to continue:"
    ans = gets.chomp
    break if ans.empty?
    prompt "Invalid answer!"
  end
end

loop do
  system "clear"
  prompt "Welcome to Twenty-One!"
  prompt "Best of #{WIN_GAME} rounds wins the game!"

  game_scores = { player: 0,
                  dealer: 0 }
  
  loop do
    prompt "PLAYER SCORE: #{game_scores[:player]}, DEALER SCORE: #{game_scores[:dealer]}"

    loop do    
      # initialize vars
      deck = initialize_deck
      player_cards = []
      dealer_cards = []
      player_total = 0
      dealer_total = 0
    
      # initial deal
      2.times do
        player_cards << deck.pop
        dealer_cards << deck.pop
      end
    
      player_total = total(player_cards)
      dealer_total = total(dealer_cards)
    
      prompt "Dealer has #{dealer_cards[0]} and ?"
      prompt "You have: #{player_cards[0]} and #{player_cards[1]}, for a total of #{player_total}."
    
      # player turn
      loop do
        player_turn = nil
        loop do
          prompt "Would you like to (h)it or (s)tay?"
          player_turn = gets.chomp.downcase
          break if ['h', 's'].include?(player_turn)
          prompt "Sorry, must enter 'h' or 's'."
        end
    
        if player_turn == 'h'
          player_cards << deck.pop
          player_total = total(player_cards)
          prompt "You chose to hit!"
          prompt "Your cards are now: #{player_cards}"
          prompt "Your total is now: #{player_total}"
        end
    
        break if player_turn == 's' || busted?(player_total)
      end
    
      if busted?(player_total)
        result = detect_result(dealer_total, player_total)
        conclude_game(dealer_cards, player_cards, dealer_total, player_total, result)
        winner_scores(game_scores, result)
        break
      else
        prompt "You stayed at #{player_total}"
      end
    
      # dealer turn
      prompt "Dealer turn..."
      enter_to_continue
    
      loop do
        break if dealer_stays?(dealer_total)
        prompt "Dealer hits!"
        dealer_cards << deck.pop
        dealer_total = total(dealer_cards)
        prompt "Dealer's cards are now: #{dealer_cards}"
      end
    
      if busted?(dealer_total)
        result = detect_result(dealer_total, player_total)
        conclude_game(dealer_cards, player_cards, dealer_total, player_total, result)
        winner_scores(game_scores, result)
        break
      else
        prompt "Dealer stays at #{dealer_total}"
      end
    
      # both player and dealer stays - compare cards!
      result = detect_result(dealer_total, player_total)
      conclude_game(dealer_cards, player_cards, dealer_total, player_total, result)
      winner_scores(game_scores, result)
      break
    end

    if game_winner?(game_scores)
      declare_winner(game_scores)
      break
    end

    enter_to_continue
  end

  break unless play_again?
end

prompt "Thank you for playing Twenty-One! Good bye!"

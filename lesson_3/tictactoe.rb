################################################################################

# 1. Display the initial empty 3x3 board.
# 2. Ask the user to mark a square.
# 3. Computer marks a square.
# 4. Display the updated board state.
# 5. If winner, display winner.
# 6. If board is full, display tie.
# 7. If neither winner nor board is full, go to #2
# 8. Play again?
# 9. If yes, go to #1
# 10. Good bye!

################################################################################
require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"

SORRY_MSG = "Sorry, thats not a valid choice."

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize, Metrics/MethodLength
def display_board(brd, scores)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "Player score: #{scores['Player']}"
  puts "Computer score: #{scores['Computer']}"
  puts ""
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |     "
  puts ""
end
# rubocop:enable Metrics/AbcSize, Metrics/MethodLength

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_board(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(brd, sep = ", ", con = "or")
  case brd.size
  when 1
    brd.join.to_s
  when 2
    brd.join(" #{con} ").to_s
  else
    brd2 = brd.dup
    last = brd2.pop
    "#{brd2.join(sep)} #{con} #{last}"
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt("Choose a square (#{joinor(empty_board(brd))}):")
    square = gets.chomp.to_i
    break if empty_board(brd).include?(square)
    prompt SORRY_MSG
  end
  brd[square] = PLAYER_MARKER
end

def threat(wline, brd)
  wline.count do |box|
    brd[box] == "X"
  end
end

def find_at_risk_square(brd)
  block = nil

  WINNING_LINES.each do |lines|
    if threat(lines, brd) == 2
      lines.each do |key|
        return block = key if brd[key] == " "
      end
    end
  end

  block.nil? ? empty_board(brd).sample : block
end

def computer_places_piece!(brd)
  square = find_at_risk_square(brd)
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_board(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  #  WINNING_LINES.each do |line|
  #    if brd[line[0]] == PLAYER_MARKER &&
  #       brd[line[1]] == PLAYER_MARKER &&
  #       brd[line[2]] == PLAYER_MARKER
  #      return "Player"
  #    elsif brd[line[0]] == COMPUTER_MARKER &&
  #          brd[line[1]] == COMPUTER_MARKER &&
  #          brd[line[2]] == COMPUTER_MARKER
  #      return "Computer"
  #    end
  #  end

  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

def keep_score(winner, scores)
  if winner == "Player"
    scores['Player'] += 1
  elsif winner == "Computer"
    scores['Computer'] += 1
  end
end

scores = { 'Player' => 0, 'Computer' => 0 }
loop do
  board = initialize_board
  loop do
    display_board(board, scores)
    # binding.pry
    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board, scores)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  keep_score(detect_winner(board), scores)

  break prompt "#{scores.key(5)} wins the game!" if scores.values.any?(5)

  loop do
    prompt "Ready for next round? Type 'Y'"
    ans = gets.chomp
    break if ans.downcase.start_with?('y')
    prompt SORRY_MSG
  end

  # prompt "Play again? Type 'Y' or 'N'"
  # ans = gets.chomp
  # break unless ans.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe!"

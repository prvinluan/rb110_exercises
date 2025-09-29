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

def pick_square_five(brd)
  return 5 if brd[5] == INITIAL_MARKER
  nil
end

def odds?(lines, brd, mark)
  count = lines.count do |box|
    brd[box] == mark
  end
  count == 2
end

def mark_the_third_square(brd)
  WINNING_LINES.each do |lines|
    if odds?(lines, brd, COMPUTER_MARKER)
      lines.each do |key|
        return key if brd[key] == INITIAL_MARKER
      end
    end
  end
  nil
end

def find_at_risk_square(brd)
  WINNING_LINES.each do |lines|
    if odds?(lines, brd, PLAYER_MARKER)
      lines.each do |key|
        return key if brd[key] == INITIAL_MARKER
      end
    end
  end
  nil
end

def computer_places_piece!(brd)
  square =
    mark_the_third_square(brd) || find_at_risk_square(brd) ||
    pick_square_five(brd) || empty_board(brd).sample
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

def plays_first
  loop do
    prompt "Who goes first? Type '1' for player or '2' for computer: "
    order = gets.chomp

    case order
    when "1"
      return 1
    when "2"
      return comp_decides
    else
      prompt SORRY_MSG
    end
  end
end

def comp_decides
  comp_pick = [1, 2].sample

  if comp_pick == 1
    prompt "Computer wants you to go first"
  else
    prompt "Computer goes first"
  end

  player_ready("Are you ready to play")

  comp_pick
end

def player_ready(msg)
  loop do
    prompt "#{msg}? Type 'Y'"
    ready = gets.chomp.upcase
    break if ready == 'Y'
    prompt SORRY_MSG
  end
end

def player_first(brd, scores)
  loop do
    display_board(brd, scores)
    # binding.pry
    player_places_piece!(brd)
    break if someone_won?(brd) || board_full?(brd)

    computer_places_piece!(brd)
    break if someone_won?(brd) || board_full?(brd)
  end
end

def computer_first(brd, scores)
  loop do
    # binding.pry
    computer_places_piece!(brd)
    break if someone_won?(brd) || board_full?(brd)

    display_board(brd, scores)

    player_places_piece!(brd)
    break if someone_won?(brd) || board_full?(brd)
  end
end

system "clear"
scores = { 'Player' => 0, 'Computer' => 0 }
turn = plays_first

loop do
  board = initialize_board

  turn == 1 ? player_first(board, scores) : computer_first(board, scores)
  # loop do
  #   display_board(board, scores)
  #   # binding.pry
  #   player_places_piece!(board)
  #   break if someone_won?(board) || board_full?(board)

  #   computer_places_piece!(board)
  #   break if someone_won?(board) || board_full?(board)
  # end

  display_board(board, scores)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  keep_score(detect_winner(board), scores)

  break prompt "#{scores.key(5)} wins the game!" if scores.values.any?(5)

  player_ready("Ready for the next round")

  # prompt "Play again? Type 'Y' or 'N'"
  # ans = gets.chomp
  # break unless ans.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe!"

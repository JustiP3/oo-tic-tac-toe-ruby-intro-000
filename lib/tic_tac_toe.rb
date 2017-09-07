class TicTacToe
@board
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]
def initialize(board = nil)
  @board = board
  if board == nil
    @board = []
    counter = 0
    while counter < 9 do
      @board << " "
      counter += 1
    end
  end
end
def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end
def input_to_index(input)
  index = input.to_i - 1
end
def move(index, token = "X")
@board[index] = token
end
def position_taken?(index)
  if @board[index] == "X" || @board[index] == "O"
  taken = true
  else
  taken = false
  end
end
def valid_move?(index)
  if index.between?(0, 8) && !position_taken?(index)
    valid = true
  else
    valid=false
  end
end

def turn()
  valid = false
  token = current_player
  while valid == false do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    valid = valid_move?(index)
    if valid
      move(index, token)
      display_board
    end
  end
end
def turn_count
  count = 0
  @board.each do |space|
    if space == "X" || space == "O"
      count += 1
    end
  end
  count
end
def current_player
  if turn_count % 2 == 0
    player = "X"
  else
    player = "O"
  end
end
def won?
  won = WIN_COMBINATIONS.any? do |combo|
     @board[combo[0]] == @board[combo[1]] && @board[combo[2]] == @board[combo[1]] && @board[combo[0]] == "X" || @board[combo[0]] == "O"
   end
   if won
     winning_combination = WIN_COMBINATIONS.find do |combo|
       @board[combo[0]] == @board[combo[1]] && @board[combo[2]] == @board[combo[1]]
     end
   end
end
def full?
  full = @board.all? do |space|
    space == "X" || space == "O"
  end
end
def draw?
  if full? && !won?
    draw = true
  else
    draw = false
  end
end
def over?
  if won? || draw?
    over = true
  else
    over = false
  end
end
def winner
  winner = nil
  if won? != false
    winning_combination = WIN_COMBINATIONS.find do |combo|
    @board[combo[0]] == @board[combo[1]] && @board[combo[2]] == @board[combo[1]]
    end
    winner = @board[winning_combination[0]]
  end
end

def play
  while over? == false do
    turn
  end
if won?
  puts "Congratulations #{winner}"
else
  puts "Cat's Game!"
end
end



end

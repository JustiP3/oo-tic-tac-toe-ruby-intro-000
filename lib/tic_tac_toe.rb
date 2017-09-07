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
    board = []
    counter = 0
    while counter < 9 do
      board << " "
      counter += 1
    end
  end
end
def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@baord[6]} | #{@board[7]} | #{@board[8]} "
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
  if index.between(0, 8) && !position_taken(index)
    valid = true
  else
    valid=false
  end
end
def turn
  valid = false
  while valid = false do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    valid = valid_move?(index)
  end

end

end

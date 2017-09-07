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

end

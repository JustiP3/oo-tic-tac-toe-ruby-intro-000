class TicTacToe
@board

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
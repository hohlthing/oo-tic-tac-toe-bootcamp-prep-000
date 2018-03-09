class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  def WIN_COMBINATIONS = [
    [0,1,2], # Top row
    [3,4,5], # Middle row
    [6,7,8], # Bottom row
    [0,3,6], # First column
    [1,4,7], # Second column
    [2,5,8], # Third column
    [0,4,8], # Left diagonal
    [2,4,6]  # Right diagonal
    ]
  end
end
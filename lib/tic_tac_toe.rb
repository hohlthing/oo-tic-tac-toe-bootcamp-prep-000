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
  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
  def input_to_index(user_input)
    user_input.to_i - 1
  end
  def move(board, index, current_player)
    board[index] = current_player
  end
  def position_taken?(board, location)
    board[location] != " " && board[location] != ""
  end
end
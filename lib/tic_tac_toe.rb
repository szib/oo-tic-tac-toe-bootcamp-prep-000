class TicTacToe
  WIN_COMBINATIONS = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [2,4,6]
    ]
  
  def initialize
    @board = Array.new(9," ")
  end
  
  def display_board
    separator = "-" * 11
    printed_board = @board.map { |tile| " #{tile} " }
      .map.with_index { |tile, idx| idx % 3 === 1 ? "|#{tile}|" : tile }
      .map!.with_index { |tile, idx| [2,5].include?(idx) ? "#{tile}\n#{separator}\n" : tile }
      .join
    puts printed_board
  end
  
  def input_to_index(number)
     number.to_i - 1
  end
  
  def move(idx, player)
    @board[idx] = player
  end
  
  def position_taken?(idx)	
    return true unless (@board[idx] == " " || @board[idx] == "" || @board[idx] == nil)
    false
  end
  
  def valid_move?(idx)
    return true if (0..8).include?(idx) && !position_taken?(idx)
    false
  end
  
  def turn_count
    turn = 0
    @board.each {|t| turn += 1 if t != " "}
    turn
  end
  
  def current_player
    turn_count.even? ? "X" : "O"
  
  
  def turn
    puts "Please enter 1-9:"
    answer = gets.strip
    idx = input_to_index(answer)
    if valid_move?(idx)
      move(idx, current_player
      display_board
    else
      self.turn
    end
  end
  
end
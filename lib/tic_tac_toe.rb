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
  
end
class Board 
	include Enumerable
  attr_accessor :board

  def initialize
  	@board = [[" "," "," "," "]*12]
  end

  def each(&block)
    self.each {|member| block.call(member)}
  end

  def print_board(player_arr,i)
  	board[i] = player_arr
    puts"\n\n"
    board.each_entry {|row| p row.join(" | ")}
    puts"\n\n"
  end
end
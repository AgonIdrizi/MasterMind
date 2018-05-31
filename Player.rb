class Player
  attr_accessor :arr, :secretcode

  def initialize
  	@arr = [" "," "," "," "]
    @secretcode = [" "," "," "," "]

  end

  def secret_code(player,inp, colors) 
    player.secretcode = input(player) if inp =="n"
    player.secretcode = input_computer(player,colors) if inp =="y"
    player.secretcode  
  end

  def input(player)
    player.arr = player.arr.map do |item|
      item = gets.chomp.downcase
    end
    player.arr
  end

  def input_computer(player,colors)
    player.arr = colors
  end

  def win(player,psecretcode) # check if all colours match
    player.each_with_index.all? do |item,i|
      item == psecretcode[i]
    end
  end

end


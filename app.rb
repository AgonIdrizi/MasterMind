require "./MasterMind.rb"
require "./Board.rb"
require "./Player.rb"
require "./Color.rb"



turn = 0

player1 = Player.new
player2 = Player.new
game = MasterMind.new
colors = Color.new
board = Board.new

begin

puts "Please enter do you want to play against computer"
input = gets.chomp
  if input != "y" and input != "n"
	raise "Wrong word typed"
  end
  rescue 
  retry
end

 if input == "y"
   puts "Computer enters secret code"
   player2.secretcode = player2.input_computer(player2,colors.rand_colors(colors.choosen_colors)) 
 end
 if input == "n"
   puts "Please enter your secret code" 
   player1.secretcode = player1.input(player1)
 end
  

while turn<12
  case input 
    when "y" 
	  puts "Please player enter your guess code"
	  player1.arr = player1.input(player1) #guesser is the player
	  game.play(player1.arr, player2.secretcode) #this prints out the feedback,guessed colors and colors in the same position
	  board.print_board(player1.arr , turn)
	   
	  if player1.win(player1.arr, player2.secretcode) == true
	   	puts "Player wins"
	  break
	  end
	when 'n' 
	  puts "Computer enters guess code"
	  player2.arr = player2.input_computer(player2,colors.rand_colors(colors.choosen_colors)) #guesser is the computer
	  game.play(player2.arr, player1.secretcode) #this prints out the feedback,guessed colors and colors in the same position
	  board.print_board(player2.arr , turn)
	   
	  if player2.win(player2.arr, player1.secretcode) == true
	    puts "Computer wins"
	  break
	  end
  end


 turn +=1
end

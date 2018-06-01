
class MasterMind
  @@feedback = 0
  @@feedbackarr = []
  
  

  def play(player, secretcode)
    puts "You guessed #{feedback_guessed_colors(player, secretcode)} colors "
    puts "#{feedback_same_position(player, secretcode)} of which were in same position"
    
    @@feedback = 0
    @@feedbackarr = []
  end

  def feedback_guessed_colors(player, secretcode)
  	player.each_with_index do |item1,i|
  	  secretcode.each_with_index do |item2,j|
  	    @@feedback +=1  if item1 == item2
  	  end 
  	end 
  	@@feedback
  end

  def feedback_same_position(player, secretcode) #this gives feedback array, with guesses in the same position
  	player.each_with_index do |item1,i|
  	  @@feedbackarr<<player[i] if player[i] == secretcode[i]
  	end
   @@feedbackarr.length	
  end

  
end




#a = MasterMind.new
#a.play
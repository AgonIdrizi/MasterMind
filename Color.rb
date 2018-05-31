class Color
     include Enumerable
     
  attr_accessor :colors, :choosen_colors
  def initialize
 	@colors = ["red","green","black","white","yellow","orange"]
 	@choosen_colors = [" "," "," "," "]
  end

  def each(&block)
    self.each {|member| block.call(member)}
  end

  def rand_colors(color)
 	color = colors.sample(4)
  end
 
end
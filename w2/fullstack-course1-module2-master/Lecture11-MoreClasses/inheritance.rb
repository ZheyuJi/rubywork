class Dogg 
  def to_s 
    "Dog" 
  end 
  def bark 
    "barks loudly" 
  end 
end 
class SmallDog < Dogg
  def bark # Override 
    "barks quietly" 
  end 
end 

dogg = Dogg.new # (btw, new is a class method) 
small_dog = SmallDog.new 
puts "#{dogg}1 #{dogg.bark}" # => Dog1 barks loudly 
puts "#{small_dog}3 #{small_dog.bark}" # => Dog2 barks quietly 



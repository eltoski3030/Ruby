class Creature
    def initialize(name)
      @name = name
    end
    
    def fight
      return "Punch to the chops!"
    end
  end
  
  # Add your code below!
  
  class Dragon < Creature
    def fight #this is an overwrite
      puts "Instead of breathing fire. . . " 
      super
    end
  end
  
  
  drag = Dragon.new("bambi")
  
  drag.fight
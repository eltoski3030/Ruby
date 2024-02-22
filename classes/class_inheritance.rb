class Creature
    def initialize(name)
      @name = name
    end
    
    def fight
      return "Punch to the chops!"
    end
  end
  
 
  
  class Dragon < Creature
    def fight #this is an overwrite
      puts "Instead of breathing fire. . . " 
      super
    end
  end
  
  
  drag = Dragon.new("bambi")
  
  drag.fight



  class Computer
    @@users = {}
    def initialize(username, password)
      @username = username
      @password = password
      @files = {}
      @@users[username] = password
    end
    
    def create(filename)
      time = Time.now
      @files[filename] = time
      puts "#{filename} was created at #{time} by #{@username}. "
    end
    def Computer.get_users
      return @@users
    end
  end
  
  my_computer = Computer.new("pablos","toiko")
  
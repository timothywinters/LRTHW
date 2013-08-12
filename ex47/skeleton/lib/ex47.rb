class Room

  attr_accessor :name, :decription, :paths
  
  def initialize(name, description)
    @name = name
    @description = description
    @paths = {}
 end
 
 def go(direction)
   @paths[direction]
 end
 
 def add_paths(paths)
   @paths.update(paths)
 end
 
end

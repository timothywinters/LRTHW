class Game

  def initialize(start)
    @quips = [
      "You died. You kinda suck at this.",
      "Nice jo, you died... jackass.",
      "Such a luser.",
      "I have a small puppy that's better at this."
      ]
      @start = start
      end
      
      def prompt()
        print ">"
      end
      
      def play()
        next_room = @start
      
      while true
        puts "\n--------"
        room = method(next_room)
        next_room = room.call()
       end
     end
     
     def death()
       puts @quips[rand(@quips.length())]
	   Process.exit(1)
	 end
	 
	 def central_corridor()
	   puts "The Gothans of Planet Percal #25 have invaded your ship and destroyed"
	   puts "your entire crew. You are the last surviving memeber and your last"
	   puts "mission is to get the nutron destruct bomb from the Weapons Armory,"
	   puts "put it in the bridge, and blow the ship up after getting into an "
	   puts "escape pod."
	   puts "\n"
	   puts "You're running down the netral corridor the Weapons Armory when"
	   puts "a gthon jumps out, red scaly sin, dark grimy teeth and evil clown costume"
	   puts "flowing around his hate filled body. He's blocking the door to the"
	   puts "Armory and aout to pull a weapon to blast you."
	   
	   prompt()
	   action = gets.chomp()
	   
	   if action == "shoot!"
	   puts "

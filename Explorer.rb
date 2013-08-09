class Game

  def initialize(start)
    @quips = 
    	    [
      "You died, bears are better then you!",
      "Bearfighting and treasure hunting, you suck at them!",
      "Polar Bears. and Panda Bears and Grizzly Bears oh my!"  
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
	
	 def first_cave()
	 	 puts "This is your first expidition into the caves of Yore."
	 	 puts "You're in debt and are trying to gamble on finding riches and fame here"
	 	 puts"Or die trying and leaving your creditors out of luck"
	 	 puts"\n"
	 	 puts"You see two caves in front of you, the first has a black crystal in it."
	 	 puts "The second has a grey chest in it. Which will you go to?"
	 	 
	 	 prompt()
	 	 action = gets.chomp()
	 	 
	 	 if action == "first"
	 	 	 return :black_cave
	 	 elsif action == "second"
	 	 	 return :grey_cave
	 	 else puts " please say first or second"
	 	 	 return :first_cave
	    end
	 end
	 	
	 def black_cave
	 	 puts" The cave with the black crystal has an errie glow"
	 	 puts"You thought you saw a panda, but that's impossilbe, this is a cave"
	 	 puts"The panda on the other hand is magical and did see you."
	 	 puts"Will you try to challenge it to a food fight or run?"
	 	 
	 	 prompt()
	 	 action = gets.chomp
	 	 
	 	 if action == "food fight"
	 	 	 puts "You do the irational and start throwing you rations at the bear"
	 	 	 puts "The panda is distracted by your goey butter cake"
	 	 	 puts"You run down to the nearby cave which has a hint of sunlight"
	 	 	 return :gold_room
	 	 
	 	 elsif action == "run"
	 	 	 puts "you try to run without distracting the panda, he eats you"
	 	 	 puts"since this magical panda subsists on your soul, you are dead"
	 	 	 return :death
	 	 
	 	 else 
	 	 	 puts "choose run or food fight, the panda is getting closer!"
	 	 end
	 end
	 
	 def grey_cave
	 	 puts"This cave is dark, but you think you heard something down the hall"
	 	 puts"you also think you can hear voices, so you dismiss the idea"
	 	 puts"because your voices in your head prove you're not crazy right?"
	 	 puts"the cave suddenly becomes cold and you slip on some ice"
	 	 puts"You slide down the way and slide into a polar bear den"
	 	 puts"the Polar Bear is not amussed by your arousing him from his slumber"
	 	 puts"Do you want to give it a cold one, or try to slip and slide outa here?"
	 	 
	 	 return prompt()
	 	 
	 	 action = gets.chomp()
	 	 
	 	 if action == "Give it a cold one"
	 	 	 puts"You give the polar bear your now ice cold coke"
	 	 	 puts"It smiles and eats you anyways, cold drink and warm food!"
	 	 	 return :death
	 	 	 
	 	 elsif action == "Slip n slide"
	 	 	 puts "you deftly slip past the polar bear and slide deeper into the cave"
	 	 	 puts "As you slide into the next room you see a chest full of gold"
	 	 	 return :gold_room
	 	 	 
	 	 else puts"The Polar Bear is getting hungry, make up your mind"
	 	 	
	 	 end
	 end
	 
	 def gold_room
	 	 puts"You're now in a room filled with gold"
	 	 puts"GOLD!!! GOLD!!! GOLD!!"
	 	 puts"How much wil you take away?"
	 	 
	 	 prompt()
	 	 money = gets.chomp.to_i()
	 	 
	 	 if money <= 100
	 	 	 puts "You know you shouldn't be gready and take a bit but leave most of it"
	 	 	 puts"You don't see the exit nearby and make a run for it"
	 	 	 puts" You Won"
	 	 	 Process.exit(0)
	 	 	 
	 	 elsif money >= 100
	 	 	 puts "You greadily take all you can"
	 	 	 puts"What you don't see is the glow that some of the gold has"
	 	 	 puts"you get radation poisoning and die before you can find the exit"
	 	 	 return :death
	 	 	 
	 	 else puts"Please enter a number"
	 	 	 
	 	 end
	 end
 end
 
 a_game = Game.new(:first_cave)
 a_game.play()

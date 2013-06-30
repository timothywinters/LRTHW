module Ex25

# This function will break up words for us.
def self.break_words(stuff)
    words = stuff.split(' ')
    words
end

# Sorts the words.
def self.sort_words(words)
	words.sort()
end

# Prints the first word after popping it off.
def self.puts_first_word(words)
    word = words.pop()
    puts word
end

# Prints the last word after popping it off.
def self.puts_last_word(words)
    word = words.pop()
    puts word
end

# Takes in a full sentence and returns the sorted words.
def self.sort_sentence(sentence)
    words = break_words(sentence)
    sort_words(words)
end

# Puts the first and last words of the sentence.
def self.prints_first_and_last(sentence)
    words = break_words(sentence)
    puts_first_word(words)
    puts_last_word(words)
end

# Sorts the words then prints the first and last one.
def self.print_first_and_last_sorted(sentence)
    words = sort_sentence(sentence)
    print_first_word(words)
    print_last_word(words)
end

sentence = "All good things come to those who wait."

words = Ex25.break_words(sentence)
sorted_words = Ex25.sort_words(words)

puts_first_word(words)
puts_last_word(words)
puts_first_word(sorted_words)
puts_last_word(sorted_words)
sorted_words = Ex25.sort_sentence(sentence)
print sorted_words

def self.print_first_and_last(sentence)
  print_first_word(words)
  print_last_word(words)
end

def self.print_first_and_last_sorted(sentence)
   words = sort_sentence(sentence)
    print_first_word(words)
    print_last_word(words)
end


puts "Let's practice everything."
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

poem = <<POEM
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explantion
\n\t\twhere there is none.
POEM


puts "--------------"
puts poem
puts "--------------"

five = 10 - 2 + 3 - 6
puts "This should be five: %s" % five
end 

def secret_formula(start_point)
    jelly_beans = start_point * 500
    jars = jelly_beans / 1000
    crates = jars / 100
    return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: %s" % start_point
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates." 

start_point = start_point / 10

puts "We can also do that this way:"
puts "We'd have %s beans, %s jars, and %s crates." % secret_formula(start_point)

#!/usr/bin/env ruby

# This function will break up words for us.
def break_words(stuff)
    words = stuff.split(' ')
    return words
end

# Sorts the words.
def sort_words(words)
    return words.sort
end

# Prints the first word after removing it from the array.
def puts_first_word(words)
    word = words.shift
    puts word
end

# Prints the last word after popping it off.
def puts_last_word(words)
    word = words.pop
    puts word
end

# Takes in a full sentence and returns the sorted words.
def sort_sentence(sentence)
    words = break_words(sentence)
    return sort_words(words)
end

# Puts the first and last words of the sentence.
def puts_first_and_last(sentence)
    words = break_words(sentence)
    puts_first_word(words)
    puts_last_word(words)
end

# Sorts the words then prints the first and last one.
def puts_first_and_last_sorted(sentence)
    words = sort_sentence(sentence)
    puts_first_word(words)
    puts_last_word(words)
end

puts "Let's practice everything."

puts "You'd need to know 'bout escapes with \\ that do \n newlines and \t tabs."

poem = <<POEM
The lovely world
with logic so firmly planted
cannot discern the needs of love
nor comprehend passion from intuition
and requires an explantion
where there is none.
POEM

puts "--------------"
puts poem
puts "--------------"

# five = 10 - 2 + 3 - 5
five = 5
puts "This should be five: %s" % five

def secret_formula(started, hash=true)
    jelly_beans = started * 500
    jars = jelly_beans / 1000
    crates = jars / 100
    return {:jelly_beans => jelly_beans, :jars => jars, :crates => crates}
end

start_point = 10000
formula = secret_formula(start_point)
jelly_beans = formula[:jelly_beans]
jars = formula[:jars]
crates = formula[:crates]

puts "With a starting point of: %d" % start_point
puts "We'd have #{jelly_beans} jelly_beans, #{jars} jars, and #{crates} crates."

start_point = start_point / 10

puts "We can also do that this way:"
############### Come back to this #####################
# puts "We'd have %d beans, %d jars, and %d crates." % secret_formula(start_point).to_a

sentence = "All good things come to those who wait."

words = break_words(sentence)
sorted_words = sort_words(words)

puts sentence
# puts "First word: #{puts_first_word(words)}"
# puts "Last word: #{puts_last_word(words)}"
# puts "First word (after sort): #{puts_first_word(sorted_words)}"
# puts "Last word (after sort): #{puts_last_word(sorted_words)}"

# sorted_words = sort_sentence(sentence)
# puts "Sorted words: #{sorted_words}"
# puts "First_and_last: puts_first_and_last(sentence)

# puts_first_and_last_sorted(sentence)

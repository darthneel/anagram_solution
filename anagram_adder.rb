require "./lib/anagram.rb"
require "./lib/connection.rb"

word_one = ARGV[0]
word_two = ARGV[1]

def anagram_checker(word_one, word_two)
	word_one_chopped = word_one.delete(" ").split(//).sort
	word_two_chopped = word_two.delete(" ").split(//).sort
	if word_one_chopped == word_two_chopped
		Anagram.create(word_one: word_one, word_two: word_two)
		puts "Great! #{word_one} and #{word_two} are anagrams"
	else
		puts "SORRY! NOT A GRAM BREH!"
	end
end

anagram_checker(word_one,word_two)

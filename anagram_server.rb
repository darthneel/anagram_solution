require "./lib/anagram.rb"
require "./lib/connection.rb"
require 'mustache'
require 'sinatra'
require 'sinatra/reloader'

def anagram_checker(word_one, word_two)
	word_one_chopped = word_one.delete(" ").split(//).sort
	word_two_chopped = word_two.delete(" ").split(//).sort
	if word_one_chopped == word_two_chopped
		Anagram.create(word_one: word_one, word_two: word_two)
		"Great! #{word_one} and #{word_two} are anagrams"
	else
		"SORRY! NOT A GRAM BREH!"
	end
end


get "/" do 
	File.read('./views/index.html')
end

post "/anagrams" do
	anagram_checker(params["word_one"], params["word_two"])
end

get "/anagrams" do 
	anagrams = Anagram.all.to_a
	Mustache.render(File.read("./views/anagrams.html"), {anagrams: anagrams})
end
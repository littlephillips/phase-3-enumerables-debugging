# Write your code here

#write a method reverse_each_word
# takes an argument of a sentence as a string
# split the string on "" to get acces to each word in the sentece
# reverse each word, and add it to a new array
  # create an empty array
  # iterate over the array
# join the array of words on "" to  create one string
require 'pry'

#using each
def reverse_each_word sentence
  words = sentence.split
  reversed_words = []

  words.each do |word|
    reversed_words << word.reverse
  end
  reversed_words.join(" ")
end

binding.pry
0

reverse_each_word("Hello there, and how are you?")


#using map

def reversing_words data
  str = data.split

  reversed_str = str.map do |word|
    word.reverse
  end

  reversed_str.join(" ")
end

puts reversing_words("Hello there, and how are you?")

#map shorhand
def reverse_each_word(sentence)
  words = sentence.split

  reversed_words = words.map(&:reverse)

  reversed_words.join(" ")
end shorthand

#map combining in one_liner
def reverse_each_word(sentence)
  sentence.split.map(&:reverse).join(" ")
end

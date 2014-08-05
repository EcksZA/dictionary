require './lib/dictionary'

def dictionary_interface
  puts "Welcome to the dictionary."
  puts "\n"
  puts "Enter 'a' to add a word, enter 'l' to list a word
        or enter 'x' to exit"

  user_choice = gets.chomp

  if user_choice == 'a'
    puts "input your new word"
    new_word = gets.chomp
    puts "input your new definition"
    new_definition = gets.chomp

    our_dic = Term.new(new_word, new_definition)
    our_dic.show
  elsif user_choice == 'l'
    our_dic.list_words
  elsif user_choice == 'x'
    puts "Thank you and goodbye!"
  else
    puts "That is not a valid entry. Please try again."
    dictionary_interface
  end
end
dictionary_interface

require './lib/dictionary'

puts "Welcome to the dictionary."

def dictionary_interface
  puts "\n"
  puts "Enter 'a' to add a word, enter 'l' to list a word,
        's' to see the dictionary or enter 'x' to exit"

  user_choice = gets.chomp
  add_new(user_choice)
end

def add_new(the_choice)
  if the_choice == 'a'
    puts "input your new word"
    new_word = gets.chomp
    puts "input your new definition"
    new_definition = gets.chomp

    our_dict = Term.new(new_word, new_definition)
    @dictionary = our_dict.save
    puts our_dict.show
    puts "\n"
    puts "Would you like to add another word?"
    puts "Press 'y' for yes or 'n' for no:"
    puts "\n"
    the_choice = gets.chomp

      if the_choice == 'y'
        add_new('a')
      else
        the_choice == 'n'
        dictionary_interface
      end
  elsif the_choice == 's'
    Term.all.each do |every|
      puts every.word + ": " + every.definition
    end
    dictionary_interface
  elsif the_choice == 'l'
    Term.list_words.each {|every| puts every }
    puts "\n"
    puts "Press 'd' if you would like to delete one of these words"
    puts "Press 'e' if you would like to edit a word or press 'x' if you would like to exit"
    new_choice = gets.chomp
      if new_choice == 'd'
        puts "Enter the word that you would like to delete"
        delete_word = gets.chomp
        Term.remove(delete_word)
        Term.list_words.each {|every| puts every }
      elsif new_choice == 'e'
        puts "Enter the word you would like to edit"
        edit_word = gets.chomp
        puts "Press 'w' to edit the word or press 'd' to edit the definition"
        new_choice2 = gets.chomp
        if new_choice2 == 'w'
          puts "What would you like to change the word to?"
          word_option = gets.chomp

        else






      else
        dictionary_interface
      end
    dictionary_interface
  elsif the_choice == 'x'
    puts "Thank you and goodbye!"
  else
    puts "That is not a valid entry. Please try again."
    dictionary_interface
  end
end
dictionary_interface

class Term

  @@word_bank = []
  @@words = []

  def initialize(word, definition)
    @word, @definition = word, definition
  end

  def Term.user_input
    @user_input
  end

  def word
    @word
  end

  def definition
    @definition
  end

  def show
    @word + ": " + @definition
  end

  def Term.all
    @@word_bank
  end

  def save
    @@word_bank << self
  end

  def Term.clear
    []
  end

  def Term.list_words
    @@word_bank.each do |diction|
        @@words << diction.word
    end
    @@words
  end

  # def Term.remove

  # end




end

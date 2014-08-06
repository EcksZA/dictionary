class Term

  @@word_bank = []
  @@words = []

  def initialize(word, definition)
    @word, @definition = word, definition
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
    @@word_bank = []
  end

  def Term.list_words
    @@word_bank.each do |diction|
      @@words << diction.word
    end
    @@words
  end

  def Term.remove(value)
    @@word_bank.delete_if do |diction|
      value == diction.word
    end
  end

  def Term.edit(value1, value2, value3)
    @@word_bank.each do |diction|
      if value2 == diction.word
        diction.word = diction.word.sub(value2, value3)
      end
    end
  end
end

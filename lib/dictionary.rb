class Term

  @@word_bank = []

  def initialize(word, definition)
    @word, @definition = word, definition
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

end

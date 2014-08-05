class Term

  def initialize(word, definition)
    @word, @definition = word, definition
  end

  def show
    @word + ": " + @definition
  end

end

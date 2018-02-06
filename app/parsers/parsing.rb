require"open-uri"

class BaseParsing
  attr_reader :url
  def initialize(url)
    @url = url
    @text = open(@url).read
  end

  def word_finder(word)
    @text.index(word)
  end
end

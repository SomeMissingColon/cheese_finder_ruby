class CheeseView
  def ask(string)
    puts string
    gets.chomp
  end

  def cheese_found(index,url)
    puts"we have found a cheese at index: #{index}\n#{url}"
  end
end

require_relative"../parsers/macron_parsing"
require_relative"../views/cheese_view"
class CheesesController
  def initialize
    @view = CheeseView.new
  end
  def crawl
    id_start = @view.ask("start id?").to_i
    id_end = @view.ask("end id?").to_i
    MacronParsing.find_cheeses(id_start,id_end)
  end

end

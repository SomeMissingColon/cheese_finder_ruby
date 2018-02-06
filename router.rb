require_relative"app/controllers/cheeses_controller"
class Router
  def initialize
    @controller = CheesesController.new
  end

  def run
    puts "welcome to the cheese finder"
    loop do
      menu_option_display
      action = gets.chomp.to_i
      route_action(action)
    end
  end

  def route_action(action)
    case action
    when 1 then @controller.crawl
    when 2 then @controller.list
    when 3 then @controller.clear
    end
  end

  def actions
    ["Find cheeses giving a range of ids",
     "Show the cheeses",
     "Clear Database"]
  end

  def menu_option_display
    actions.each_with_index do |a, i|
      puts "#{i + 1} - #{a}"
    end
  end
end

require_relative"parsing"

class MacronParsing < BaseParsing
  def initialize(id)
    url = "https://wikileaks.org/macron-emails/emailid/#{id}"
    super(url)

  end

  def self.find_cheeses(id_start, id_end)
    (id_end - id_start).times do |id|
      id += id_start
      parse_instance = MacronParsing.new(id)
      puts parse_instance.url
      index = parse_instance.word_finder("fromage")
      unless index.nil?
        url = parse_instance.url
        Cheese.new(url: url , index: index).save
        puts "Cheese found at index: #{index}"
        next
      end
    end
  end
end


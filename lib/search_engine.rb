require_relative '../lib/scrapper.rb'

class SearchEngine < Scrapper  
  def title_search(place)   
      result = String.new
      hash_creator.each do |item|
        result = item[:title] if item[:place] == place
      end
      result
  end

  def place_search(movie)   
    result = String.new
    hash_creator.each do |item|
      result = item[:place] if item[:title] == movie
    end
    result
  end

end

object1 = SearchEngine.new
puts object1.place_search("Babam ve Oglum")
# hash_creator[0][:place] == 1 => hash_creator[0][:title]
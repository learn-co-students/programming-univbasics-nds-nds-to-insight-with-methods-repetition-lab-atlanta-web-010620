$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
 stooges = [{:name => "Larry"}, {:name => "Curly"}, {:name => "Moe"}, {:name => "Iggy"}]
    expect(list_of_directors(stooges)).to eq(["Larry", "Curly", "Moe", "Iggy"])
  end
end

def total_gross(source)
 expect(total_gross(directors_database)).to eq(10355501925)
  end
end



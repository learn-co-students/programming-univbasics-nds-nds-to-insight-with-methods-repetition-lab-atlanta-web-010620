$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.length do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  # p "this is the result #{result}"
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
  # Write this implementation
  i = 0 
  array = []
  while i < source.length do 
    array.push(source[i][:name])
    i+=1
  end 
  # p array 
  array 
end

def total_gross(source)
  grand_total = 0 
  array = list_of_directors(source) 
  directors_totals_hash = directors_totals(source)
  counter = 0 
  while counter < source.length do 
    grand_total += directors_totals_hash[array[counter]]
    
    counter+=1 
  end 
  grand_total
end



  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
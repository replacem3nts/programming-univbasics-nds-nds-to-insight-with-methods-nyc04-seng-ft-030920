$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


def gross_for_director(director_data)
  indiv_result = {}
  indiv_result[director_data] = 0
  film_index = 0
    while film_index < director_data[:movies].length do
      indiv_result[director_data] += director_data[:movies][film_index][:worldwide_gross]
      film_index += 1
    end
    indiv_result[director_data]
end

def directors_totals(nds)
  result = {}
  dir_index = 0
  while dir_index < nds.length do
    result[nds[dir_index][:name]] = gross_for_director(nds[dir_index])
    dir_index += 1
  end
  result
end

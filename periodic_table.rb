#################################################################### ‎(ﾉಥ益ಥ）ﾉ ┻━┻
#   Requirements =================================================##
#   X - Your application must have a class named Element with      |##
#       the following attributese.                                |##
#           - name                                               |## (╯'□')╯︵ ┻━┻
#           - atomic weight                                      |##
#           - atomic number                                      |##
#     Put your Element class in a separate file to               |##
#     periodic_table.rb (require_relative)                       |##
#                                                                |##
#     X - Create class instance methods and a class                |##
#       instance variablee.                                       |##
#           - return all instances of the Element class          |##
#           - return a count of Element instances                |##
#                                                                |##
#  X - Find THREE elements on the periodic table and record       |## (ﾉಥДಥ)ﾉ︵┻━┻･/
#     their name, atomic weight and atomic number and            |##
#     instantiate them as instances of your Element class        |##
#                                                                |##
#  X - Implement a way to round the atomic weight of the element  |##
#     to the nearest whole number                                |## ʕノ•ᴥ•ʔノ ︵ ┻━┻
#                                                                |##
#   X - Implement a way to display your three elements and all     |##
#     their attributes, including their atomic weight rounded    |##
#     to the nearest whole number                                |## ┬─┬ ︵ /(.□. \）
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ##
####################################################################
#################################################################### (ノ^_^)ノ┻━┻ ┬─┬ ノ( ^_^ノ)

### Refactor Elements Data imported from JSON file instead of hard keyed ###
# httpse.//github.com/Bowserinator/Periodic-Table-JSON/blob/master/PeriodicTableJSON.json
# 1. Expand your class defintion to include all the properties here.
# 2. Injest the data into your app as a hash
# 3. Create object instances using the hashes

require_relative "models/element"
require "JSON"

file = File.read("PeriodicTableJSON.json")
data_hash = JSON.parse(file)

data_hash["elements"].each do |ele|
  instance_variable_set("@#{ele["name"].downcase}", Element.new(ele))
end

### TESTS ###
# p Element.elements.count
# p Element.display_all
# p data_hash["elements"]             # hash of elements
# p data_hash["elements"][0].keys     # keys of an element
# p data_hash["elements"][0]["name"]  # value of key name
# p @hydrogen.atomic_mass

$:.unshift File.dirname(__FILE__) + '/../lib'
require 'terminal-table/import'

puts
puts table(['Mined      Minds      Pizzeria'], ['         304-555-5555'], ['           _....._'], ['       _.:`.--|--.`:._'], ['     .: . \o  | o / . `.'], ['    // `.  \ o|  /  o `.\''], ['   //`._o`. \ |o/ o_.-`o\\'],
  ['   || o `-.`.\|/.-` o   ||'], ['   ||--o--o-->|<o-----o-||'], ['   \\  o _.-`/|\`-._o  o//'], ['    \\.-`  o/ |o\ o `-.//'], ['     `.`.o / o|  \ o.`.`'], ['       `-:/.__|__o\:-`'], ['          `"--=-```'])


puts
user_table = table do
  self.headings = ['Sizes', 'Crust', {:value => 'Toppings', :alignment => :center}]
  add_row ['$8 - Small - 10"', 'Thin',  'Pepperoni  Ham  Sausage']
  add_row ['$10 - Medium - 12"',  'Regular', '  Beef   Chicken  Onion']
  add_row ['$12 -Large 14"', 'Deep Dish',  '   Peppers   Pineapple']
  add_row [nil, nil, '    Mushrooms   Olives']
  add_row :separator
  add_row [{ :value => 'Extra toppings/cheese $1 more', :colspan => 3, :alignment => :center }]
end
puts user_table
require './lib/game_of_life_classes'

size = 50
density = 15
game_len = 200
#some_good_symbols_to_use = ['·', '•', 'X', '*', ' ', 'o']




if ARGV.length == 3
  size =  ARGV[0].to_i
  density = ARGV[1].to_i
  game_len =  ARGV[2].to_i
end




life = Life.new(size, density, game_len)
life.game_on



# size = 4
# density = 3
# game_len = 200

# d = "·"
# l = "*"
# life = [[d,d,d,d,d],[d,d,l,d,d],[d,d,l,d,d],[d,d,l,d,d], [d,d,d,d,d]]
# #this is the order and default values of the variables in the initialize
# # size=30, density=10, game_len=100, sym_dead=' ', sym_life='*', life=[]
# life = Life.new(size, density, game_len, d, l, life )
# life.game_on

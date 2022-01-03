require "./player.rb"
require "./question.rb"
require "./parameters.rb"
require "./game.rb"


parameters = Parameters.new(3)
max_points = parameters.max_points

question = Question.new()

p1 = Player.new('John Doe', max_points)
p2 = Player.new('Mike Smith', max_points)

game_over = false
player = p1

game = Game.new(parameters,question, p1, p2)
game.start

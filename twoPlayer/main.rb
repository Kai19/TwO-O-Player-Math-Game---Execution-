# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './game'
require './player'
require './questions'


## Your test code can go here


p1 = Player.new
p2 = Player.new

game = Game.new(p1,p2)
question = Questions.new
game.game_start(question)

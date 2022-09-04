#!/usr/bin/env ruby
require 'pry'
require ('./lib/RPS.rb')
i = 0
@counter = 0
while i < 1 do
  puts "Choose your weapon: Rock, Paper or Scissors"
  player_weapon = gets.chomp
  game = RPS.new()
  game.battle_engine(player_weapon)
  @counter += 1
  puts "game counter #{@counter}"
end
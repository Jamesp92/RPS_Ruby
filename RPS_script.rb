#!/usr/bin/env ruby
require 'pry'
require ('./lib/RPS.rb')
i = 0
@counter = 0
while i < 1 do
  game = RPS.new()
  puts "Would you like to play the Bad Robot or the Good Robot?"
  good_or_bad = gets.chomp
  if (good_or_bad == "bad")
    puts "ROBOT SAYS: You are going to lose, you stinky human!"
    puts "Choose your weapon: Rock, Paper or Scissors"
    player_weapon = gets.chomp
    return_array = game.battle_engine_bad(player_weapon)
    puts "player chose #{player_weapon}"
    puts "robot chose #{return_array[0]}"
    puts return_array[1]
    
  elsif (good_or_bad == "good")
    puts "good luck , i hope you win"
    puts "Choose your weapon: Rock, Paper or Scissors"
    player_weapon = gets.chomp
    return_array = game.battle_engine_good(player_weapon)
    puts "player chose #{player_weapon}"
    puts "robot chose #{return_array[0]}"
    puts return_array[1]
  end

  @counter += 1
  puts "game counter #{@counter}"
end
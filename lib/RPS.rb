require 'pry'

class RPS 
  # def initialize
  #   self.start
  # end
  # def start
  #   puts "Choose your weapon: Rock, Paper or Scissors"
  #   player_weapon = gets
  #   self.battle_engine(player_weapon)
  # end

  def battle_engine(player_weapon)
    a = player_weapon
    b = robot_weapon

    puts "player chose #{a}"
    puts "robot chose #{b}"
    if (a == "rock") && (b == "rock")
      puts "Draw!"
    elsif (a == "rock") && (b == "paper")
      puts "Lose!"
    elsif (a == "rock") && (b == "scissors")
      puts "You're Winner!"
    elsif (a == "paper") && (b == "rock")
      puts "You're Winner!"
    elsif (a == "paper") && (b == "paper")
      puts "Draw!"
    elsif (a == "paper") && (b == "scissors")
      puts "Lose!"
    elsif (a == "scissors") && (b == "rock")
      puts "Lose!"
    elsif (a == "scissors") && (b == "paper")
      puts "You're Winner!"
    elsif (a == "scissors") && (b == "scissors")
      puts "Draw!"
    else
      puts "only goes to else"
    end

  end

  def robot_weapon
    roboweapon = rand(3)
    if (roboweapon == 0 )
      return "rock"
    elsif (roboweapon == 1)
      return "paper"
    elsif (roboweapon == 2 )
      return "scissors"
    end
  end
end


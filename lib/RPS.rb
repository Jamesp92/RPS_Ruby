require 'pry'

class RPS 
  def battle_engine_good(player_weapon)
    a = player_weapon

    robot_string = ''

    if (a == "rock")
      b = "paper"
      robot_string.concat("WOW! nice try maybe next time ")
    elsif ( a == "paper")
      b = "scissors"
      robot_string.concat ("can't beleive i won heres $10")
    elsif ( a == "scissors")
      b = "rock"
      robot_string.concat("you're the best , i love you ")
    else 
      robot_string.concat("that was a good weapon choice but it does not compute")
    end
    return b, robot_string 
  end

  def battle_engine_bad(player_weapon)
    a = player_weapon

    robot_string = ''

    if (a == "rock")
      b = "scissors"
      robot_string.concat("ROBOT SAYS: WHAT?! How did I lose?!")
    elsif (a == "scissors")
      b = "paper"
      robot_string.concat("ROBOT SAYS: NOOOOOOOOOOO!!!!")
    elsif (a == "paper")
      b = "rock"
      robot_string.concat("ROBOT SAYS: CHEATER! YOU MUST BE CHEATING!?")
    else
      puts "only goes to else"
    end
    return b, robot_string

  end

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


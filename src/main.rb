# Gems required
require 'tty-prompt'
require 'colorize'
require 'csv'
require 'awesome_print'

# Modules required
require_relative('game')

# Game Name Banner
puts """

'||''|.            '||       ||   .|'''.|    .                                     ||         
 ||   ||  ... ...   || ...  ...   ||..  '  .||.  ... ..    ...     ...   ... ...  ...    .... 
 ||''|'    ||  ||   ||'  ||  ||    ''|||.   ||    ||' '' .|  '|. .|  '|.  ||'  ||  ||  .|...||
 ||   |.   ||  ||   ||    |  ||  .     '||  ||    ||     ||   || ||   ||  ||    |  ||  ||     
.||.  '|'  '|..'|.  '|...'  .||. |'....|'   '|.' .||.     '|..|'  '|..|'  ||...'  .||.  '|...'
                                                                          ||                  
                                                                         ''''                 



Click Enter to continue...

"""
gets.chomp


# Welcome message (explain game briefly - extended references )
puts """

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  Welcome to the RubiStroopie Game
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

This is a simple game that tests your reaction time under interference! 

The Stroop Effect test is one of the best known phenomena in cognitive psychology named after John Ridley Stroop who first demonstrated the effect that interference can have in relation to reaction time.  This test is still widely used today to explore key aspects of attention, learning, memory, reading, language, cognitive skills, and neural mechanisms. 

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

"""
# Request player's info (name, age, gender, stress level, meditative state)

# Request player's name - no checks because names should remain flexible (players may use numbers in nicknames)
print "Please enter your name: "
name = gets.strip.capitalize


# Request player's age - check to make sure response is an integer, and relatively realistic age range (including early prodigy readers from 3 years old, to the age rounded to the nearest 10s of the oldest person alive recorded)
print "Please enter your age: " 
age = gets.strip
while true
    if age.to_i.to_s == age && age.to_i > 3 && age.to_i <= 120
        break
    else
        print "Oops.. Invalid response, #{name} please enter a number for your age: "
        age = gets.strip
    end
end


# Request player's gender - multiple choice fixed options (gender diversity inclusion taken into consideration)
prompt = TTY::Prompt.new
gender = prompt.select("Please select your gender:", %w(Female Male Trans Bigender Non-binary Other))


# Request player's stress level - multiple choice fixed options (0..5)
prompt = TTY::Prompt.new
stress = prompt.select("Rate your current level of stress on a 5-point scale (0 = very relaxed; to 5 = debilitating stress):", %w(0 1 2 3 4 5))


# Request player's meditation status - check for valid yes/no response
print "Did you meditate in the last hour [yes/no]?"
meditate = gets.strip.downcase
while meditate != "yes" && meditate != "no"
    puts "Oops.. Invalid response, #{name} please share did you meditate in the last hour [yes/no]? "
    meditate = gets.strip.downcase
end

if meditate == "yes" || meditate == "no"
    puts
    puts "Excellent! #{name}, let's start the RubiStroopie Game"
    puts
end



sleep(2) # To space out the next snippet on game instructions
# Game instructions message (how to play, brief experiement explanation, controls to next colored card)
puts """

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  HOW THE GAME WORKS
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

A word will be displayed one at a time, name the font colour of the word (instead of reading the actual word). When you've correctly named the font colour, then use the listed control keys below to go to the next word. There will be 15 words each round, and your performance will be timed. 

"""  
# Use colorize to show examples - method 1 (depending if we can keep the white background box when randomizing output during gameplay)
puts "Here are some examples:"
puts "xxxxxxxxxxxxxx".colorize(:color => :black, :background => :white)
puts "     BLUE     ".colorize(:color => :red, :background => :white)
print "xxxxxxxxxxxxxx".colorize(:color => :black, :background => :white) 
puts " You would say: Red"
puts
puts "xxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
puts "     PINK     ".colorize(:color => :light_magenta, :background => :white)
print "xxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
puts " You would say: Pink"
puts

puts """

There will be 2 rounds, first round will measure your baseline performance. The second round will allow you to test and see how stroop effect affects your reaction time when there's interference. 

Happy RubiStrooping!

Keyboard control keys:
[Enter] - to start the game 
[Enter] - to move onto the next word card
[x] - to exit the game early

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

"""

# Baseline Array Color Cards
green = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "     GREEN     ".colorize(:color => :light_green, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

black = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "     BLACK     ".colorize(:color => :black, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

blue = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "     BLUE      ".colorize(:color => :blue, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

red = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "      RED      ".colorize(:color => :red, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

orange = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "    ORANGE     ".colorize(:color => :yellow, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

purple = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "     PINK      ".colorize(:color => :magenta, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]


# Stroop Array Color Cards
blue_green = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "     GREEN     ".colorize(:color => :blue, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

blue_black = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "     BLACK     ".colorize(:color => :blue, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

yellow_blue = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "     BLUE      ".colorize(:color => :yellow, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

black_red = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "      RED      ".colorize(:color => :black, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

purple_orange = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "    ORANGE     ".colorize(:color => :magenta, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

blue_purple = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "     PINK      ".colorize(:color => :blue, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

black_green = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "     GREEN     ".colorize(:color => :black, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

black_black = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "     BLACK     ".colorize(:color => :black, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

green_blue = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "     BLUE      ".colorize(:color => :light_green, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

red_red = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "      RED      ".colorize(:color => :red, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

blue_orange = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "    ORANGE     ".colorize(:color => :blue, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

red_purple = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "     PINK      ".colorize(:color => :red, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]


array_baseline = [green, black, blue, red, orange, purple]

array_stroop = [red_purple, red_red, blue_orange, green_blue, black_black, black_green, blue_purple, purple_orange, black_red, yellow_blue, blue_black, blue_green]


# Player game info stored (time start, time end, time duartion, game version: baseline/stroop effect)
gets.chomp
puts "GAME START"
puts "ROUND 1"
p date = Time.now.strftime("%F")
start_time_baseline = Time.now

# sleep(3) #to test whether elapsed timer works

# calls for Stroop test method from game.rb module
Stroop.test(array_baseline)

# Play baseline game first
# Timer start recorded
# Each word displayed with its actual color
# 15 rounds of colored words 
# Time end recorded and elapsed time calculated
end_time_baseline = Time.now
elapsed_baseline = end_time_baseline - start_time_baseline
gets.chomp
puts "Well done! This is the end of Round 1."

# Display user results
# Record user results
p "In Round 1, you took #{elapsed_baseline} seconds" 
gets.chomp
puts "Ready for Round 2?"
gets.chomp


# Play stroop effect game second
puts "ROUND 2"
p date = Time.now.strftime("Date: %F")
start_time_stroop = Time.now

# sleep(2) 
# Timer start recorded
# Each word displayed with its conflicting color
Stroop.test(array_stroop)

# Prevent edge case using if statement to check correct control key is used when switching to next colored word
# 15 rounds of conflicting colored words
# Time end recorded
# Display user results
end_time_stroop = Time.now
elapsed_stroop = end_time_stroop - start_time_stroop

puts "Great! That was a little harder wasn't it?"
p "In Round 2, you took #{elapsed_stroop} seconds"
gets.chomp
elapsed_difference = elapsed_stroop - elapsed_baseline
p "This is #{elapsed_difference} seconds slower than Round 1, when there were no cognitive inteferences." 

start_time_stroop = start_time_stroop.strftime("%T")
elapsed_baseline = 
# elapsed_baseline = elapsed_baseline.strftime("%T")
# start_time_stroop = tart_time_stroop.strftime("%T")
# elapsed_stroop = elapsed_stroop.strftime("%T")
# elapsed_difference = elapsed_difference.strftime("%T")

# Save player results explored into CSV spreadsheet
# Stores player info into database
players = [
    ["#{name}", "#{age}", "#{gender}", "#{stress}", "#{meditate}", "#{date}", "#{start_time_baseline}", "#{elapsed_baseline}", "#{start_time_stroop}", "#{elapsed_stroop}", "#{elapsed_difference}"]
]
p players

headers = ["NAME", "AGE", "GENDER", "STRESS", "MEDITATE", "DATE (YYYYMMDD)", "BASELINE START", "BASELINE DURATION(s)", "STROOP START", "STROOP DURATION(s)", "REACTION TIME DIFFERENCE(s)"]

CSV.open("rubistroopie_players.csv", "a+") do |file|
    file << headers
    players.each do |player|
        file << player
    end
end

# Product CSV spreadsheet graphs to track results


# Thanking players to participate message





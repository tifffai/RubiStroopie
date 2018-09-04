# Gems required
require 'tty-prompt'
require 'colorize'
require 'csv'
require 'whirly'

# Modules required
require_relative('card')
require_relative('animation')

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

# Welcome message (explain game briefly)
puts """

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  Welcome to the RubiStroopie Game
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

This is a simple game that tests your reaction time under interference! 

The Stroop Effect test is one of the best known phenomena in cognitive psychology named after John Ridley Stroop who first demonstrated the effect that interference can have in relation to reaction time.  This test is still widely used today to explore key aspects of attention, learning, memory, reading, language, cognitive skills, and neural mechanisms. 

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

"""
# Collect player's info (name, age, gender, stress level, meditative state)
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

# Game instructions message (how to play, brief experiement explanation, examples, and keyboard controls instroduction)
puts """

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  HOW THE GAME WORKS
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

A word will be displayed one at a time, name the font colour of the word (instead of reading the actual word). When you've correctly named the font colour, then use the listed control keys below to go to the next word. There will be 15 words each round, and your performance will be timed. 

"""  
# Use colorize to show examples - method 1 (depending if we can keep the white background box when randomizing output during gameplay)
puts "Here are some examples:"
puts "xxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
puts "     BLUE     ".colorize(:color => :red, :background => :white)
print "xxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
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

"""


# Player game info stored (time start, time end, time duartion, game version: baseline Round 1)
# Play baseline game first (color card font matches actual word, 15 rounds)
gets.chomp
puts """
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
GAME START
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ROUND 1 - BASELINE TEST
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"""
puts date = Time.now.strftime("%F") 
start_time_baseline = Time.now

Card.card_generate(Card::SAME_COLORS) # Links to module in card.rb to run the game

end_time_baseline = Time.now
elapsed_baseline = end_time_baseline - start_time_baseline
gets.chomp
puts "Well done! This is the end of Round 1."
puts "In Round 1, you took #{elapsed_baseline.round(2)} seconds" 
gets.chomp 
puts "Ready for Round 2?"


# Player game info stored (time start, time end, time duartion, game version: Stroop effect Round 2)
# Play baseline game first (color card font does not matches actual word, 15 rounds)
gets.chomp
puts """
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
GAME START
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ROUND 2: STROOP TEST
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"""
start_time_stroop = Time.now

Card.card_generate(Card::STROOP_COLORS) # Links to module in card.rb to run the game

end_time_stroop = Time.now
elapsed_stroop = end_time_stroop - start_time_stroop
puts "Great! That was a little harder wasn't it?"
p "In Round 2, you took #{elapsed_stroop} seconds"
gets.chomp
elapsed_difference = elapsed_stroop - elapsed_baseline
p "This is #{elapsed_difference.round(2)} seconds slower than Round 1, when there were no cognitive inteferences." 


# Set results in easy to use values before exporting to CSV
start_time_baseline = start_time_baseline.strftime("%T")
elapsed_baseline = elapsed_baseline.round(2)
start_time_stroop = start_time_stroop.strftime("%T")
elapsed_stroop = elapsed_stroop.round(2)
elapsed_difference = elapsed_difference.round(2)

# Saves player's info and results explored into CSV spreadsheet
players = [
    ["#{name}", "#{age}", "#{gender}", "#{stress}", "#{meditate}", "#{date}", "#{start_time_baseline}", "#{elapsed_baseline}", "#{start_time_stroop}", "#{elapsed_stroop}", "#{elapsed_difference}"]
]

headers = ["NAME", "AGE", "GENDER", "STRESS", "MEDITATE", "DATE (YYYYMMDD)", "BASELINE START", "BASELINE DURATION(s)", "STROOP START", "STROOP DURATION(s)", "REACTION TIME DIFFERENCE(s)"]

CSV.open("rubistroopie_players.csv", "a+") do |file|
    file << headers
    players.each do |player|
        file << player
    end
end

# Thanking players for participate message - link to animation.rb page
Animate.countdown




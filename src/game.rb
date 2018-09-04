require 'colorize'

# Master Stroop game method
module Stroop

    def self.test(array)
        counter = 0
        while counter <= 15
            puts array.sample
            choice = gets.chomp
            counter += 1
            if choice == "x"
                print "Sorry to see you go! "
                break
            end 
        end
    end

end




<<<<<<< HEAD
# # Color cards for Round 1 baseline game
# module ColorCardsBaseline
#     def self.green
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
#         puts "     GREEN     ".colorize(:color => :light_green, :background => :white)
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
#     end
    
#     def self.black
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
#         puts "     BLACK     ".colorize(:color => :black, :background => :white)
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
#     end
=======
# Color cards for Round 1 baseline game..
module ColorCardsBaseline
    def self.red_green
        puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
        puts "     GREEN     ".colorize(:color => :red, :background => :white)
        puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
    end
>>>>>>> ad01f927cc54efc91193ac2d48351ae4277d914d

#     def self.blue
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
#         puts "      BLUE     ".colorize(:color => :blue, :background => :white)
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
#     end

#     def self.red
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
#         puts "      RED      ".colorize(:color => :red, :background => :white)
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
#     end

#     def self.orange
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
#         puts "     ORANGE    ".colorize(:color => :yellow, :background => :white)
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
#     end

#     def self.purple
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
#         puts "      PINK     ".colorize(:color => :magenta, :background => :white)
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
#     end

# end


# # Color cards for Round 1 baseline game
# module ColorCardsBaseline
#     green = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "     GREEN     ".colorize(:color => :light_green, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

#     black = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "     BLACK     ".colorize(:color => :black, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

#     blue = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "      BLUE     ".colorize(:color => :blue, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

#     red = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "      RED      ".colorize(:color => :red, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

#     orange = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "     ORANGE    ".colorize(:color => :yellow, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]

#     purple = ["xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "      PINK     ".colorize(:color => :magenta, :background => :white), "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white), "\n"]


# end



# # Color cards for Round 2 Stroop Game
# module ColorCardsStroop
#     def ColorCardsStroop.red_green
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
#         puts "     GREEN     ".colorize(:color => :red, :background => :white)
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
#     end

#     def ColorCardsStroop.red_black
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
#         puts "     BLACK     ".colorize(:color => :red, :background => :white)
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
#     end

#     def ColorCardsStroop.blue_yellow
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
#         puts "      BLUE     ".colorize(:color => :light_yellow, :background => :white)
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
#     end

#     def ColorCardsStroop.blue_blue
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
#         puts "      BLUE     ".colorize(:color => :blue, :background => :white)
#         puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
#     end

# end


module ColorCard
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

end

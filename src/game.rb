# Master Stroop game method
module Stroop
    def self.game_method(array)
        count = 0
        while true && count <15 
            print array.sample
            choice = gets.chomp
            count +=1 
            if choice == "x"
                print "Sorry to see you go!"
                break
            end 
        end
    end

end




# Color cards for Round 1 baseline game
module ColorCardsBaseline
    def self.red_green
        puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
        puts "     GREEN     ".colorize(:color => :red, :background => :white)
        puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
    end

    def self.red_black
        puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
        puts "     BLACK     ".colorize(:color => :red, :background => :white)
        puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
    end

    def self.blue_yellow
        puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
        puts "      BLUE     ".colorize(:color => :light_yellow, :background => :white)
        puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
    end

    def self.blue_blue
        puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
        puts "      BLUE     ".colorize(:color => :blue, :background => :white)
        puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
    end

end




# Color cards for Round 2 Stroop Game
module ColorCardsStroop
    def ColorCardsStroop.red_green
        puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
        puts "     GREEN     ".colorize(:color => :red, :background => :white)
        puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
    end

    def ColorCardsStroop.red_black
        puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
        puts "     BLACK     ".colorize(:color => :red, :background => :white)
        puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
    end

    def ColorCardsStroop.blue_yellow
        puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
        puts "      BLUE     ".colorize(:color => :light_yellow, :background => :white)
        puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
    end

    def ColorCardsStroop.blue_blue
        puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white)
        puts "      BLUE     ".colorize(:color => :blue, :background => :white)
        puts "xxxxxxxxxxxxxxx".colorize(:color => :white, :background => :white) 
    end

end
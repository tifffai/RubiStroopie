require 'colorize'

module Card

    STROOP_COLORS = [
        {text: "     BLACK     ", text_color: :blue },
        {text: "     BLACK     ", text_color: :magenta },
        {text: "     GREEN     ", text_color: :red },
        {text: "     GREEN     ", text_color: :green },
        {text: "     BLUE      ", text_color: :magenta },
        {text: "     BLUE      ", text_color: :green},
        {text: "     PINK      ", text_color: :black },
        {text: "     PINK      ", text_color: :red },
        {text: "    ORANGE     ", text_color: :green },
        {text: "    ORANGE     ", text_color: :blue },
        {text: "      RED      ", text_color: :black },
        {text: "      RED      ", text_color: :magenta },

    ]

    SAME_COLORS = [
        {text: "     BLACK     ", text_color: :black },
        {text: "     GREEN     ", text_color: :green },
        {text: "     BLUE      ", text_color: :blue },
        {text: "     PINK      ", text_color: :magenta },
        {text: "      GREY     ", text_color: :light_black},
        {text: "      RED      ", text_color: :red },

    ]



    def self.color_cards(cards)
        # puts
        pattern = "x" * 15
        pattern_theme = {color: :white, background: :white}

        cards = cards.map do |card|
          
            theme = { 
                color: card[:text_color], 
                background: :white 
            }
            
            [
                pattern.colorize(pattern_theme),
                card[:text].colorize(theme),
                pattern.colorize(pattern_theme),
                "\n"
            ]
        end

        return cards
    end

    def self.card_generate(cards)
        counter = 0
        cards = self.color_cards(cards)

        while counter < 15
            sampled_card = cards.sample

            puts sampled_card
            choice = gets.chomp
            if choice == "x"
                abort("Sorry to see you go - Have a great day!!")
                exit
            end
            counter += 1
        end
    end


end

# puts Card.color_cards(STROOP_COLORS)

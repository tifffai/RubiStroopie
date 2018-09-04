module Animate
    def self.countdown
        # puts "abc"
    Whirly.configure spinner: "dots"
        Whirly.start do
            Whirly.status = "Hope you had some fun! "
            sleep 2
            Whirly.status = "Medidate before trying again and see if there's a difference."
            sleep 2
            Whirly.status = "SEE YOU SOON!"
            sleep 1
        end
    end
end

say "beep beep"
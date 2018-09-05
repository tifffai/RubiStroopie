module Animate
    
    def self.farewell_no_meditation
    Whirly.configure spinner: "dots"
        Whirly.start do
            Whirly.status = "Hope you had some fun! "
            sleep 2
            Whirly.status = "Medidate before trying again and see if there's a difference."
            sleep 3
            Whirly.status = "SEE YOU SOON!"
            sleep 2
        end
    end

    def self.farewell_yes_meditation
    Whirly.configure spinner: "dots"
        Whirly.start do
            Whirly.status = "Hope you had some fun! "
            sleep 2
            Whirly.status = "Keep tracking your stress and meditation practice!"
            sleep 3
            Whirly.status = "SEE YOU SOON!"
            sleep 2
        end
    end

end
class Card 
    attr_reader :face_up

    def initialize(val)
        @card = val
        @face_up = false  # card is faced down
    end 

    def hide 
        @face_up = false  # turn the card back down 
    end

    








    #we need a var to track if card is up or down 
    # hide will turn the card over 
    # reveal will show the card





end 
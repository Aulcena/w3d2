require_relative "board"
class Card 
    attr_reader :face_up, :face_val

    def initialize(val)
        @face_val = val
        @face_up = false  # card is faced down
    end 

    def hide 
        @face_up = false  # turn the card back down 
    end

    def reveal?

        # puts @card

        @face_up = true
        
    end 

    def ==(other_card)
        @face_val == other_card.face_val

        # if both cards are faced up and have the same val. return true

    end 





# genterate pairs of the same val 
# this can be a factory method 
# val can relpy on alphabet sample 
#alphabet can be a constant



    # we need face value
    # face up or down
    # var track 
    # method to display 
    #we need a var to track if card is up or down 
    # hide will turn the card over 
    # reveal will show the card





end 
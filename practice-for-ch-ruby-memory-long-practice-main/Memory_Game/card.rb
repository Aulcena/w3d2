class Card 
    attr_reader :face_up

    def initialize
        @card = ("a".."z").to_a.sample
        @face_up = false  # card is faced down
    end 

    def hide 
        @face_up = false  # turn the card back down 
    end

    def reveal?

        puts @card

        @face_up = true
        
    end

    def pairs

       

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
require_relative "card"

class Board

    attr_reader :size, :grid

    def initialize(n=4)

        @grid = Array.new(n) {Array.new(n)}

        @size = n * n

    end 

    def [](pos)

        row,col = pos

        @grid[row][col] 

    end

    def []=(pos,val)

        row,col = pos

        @grid[row][col] = val

    end

    def pairs    
        new_arr = []


        @grid.each_with_index do |rows, i|

            rows.each_with_index do |el, j|
                val = ("a".."z").to_a.sample
                card_1 = Card.new(val)
                card_2 = Card.new(val)
                new_arr << card_1
                new_arr << card_2

            end 

        end 

        return new_arr
    end 

    def populate
        shuffled = pairs.shuffle
                    
        z = 0 

        while z < shuffled.length 


            @grid.each_with_index do |rows, i|
                rows.each_with_index do |el, j|
                    @grid[i][j] << shuffled[z]
                end 
            end 

            z += 1

        end 




    end 







end 
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

    def populate

        i = 0 

            while i <= @size / 2  

            val = ("a".."z").to_a.sample
            card_1 = Card.new(val)
            card_2 = card_1
            
            rand_row = rand(0...@grid.length)
            rand_col = rand(0...@grid.length)
            pos = rand_row, rand_col

            self[pos] = card_1.face_val

            rand_row = rand(0...@grid.length)
            rand_col = rand(0...@grid.length)
            pos = rand_row, rand_col

            self[pos] = card_2.face_val

            i += 1

        end
        
    end 







end 
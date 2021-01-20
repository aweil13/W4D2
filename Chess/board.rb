require_relative "piece.rb"

class Board
    
    def populate
        @board.map_with_index do |row, idx|
            if !(2..5).include?(idx)
                row.map_with_index { |pos, j|  Piece.new("white", self, [idx,j]) }
            end
        end
    end

    def initialize
        @board = Array.new(8) { Array.new(8) }
    end

    def [](pos)
        row, col = pos
        self[row][col] 
    end

    def []=(pos)
        row, col = pos
        self[row][col] = pos
    end

    def move_piece(color, start_pos, end_pos)
        if self[start_pos].empty? 
            raise 'invalid start position'
            retry
        elsif !valid_moves.include?(end_pos)
            raise 'invalid end position'
            retry
        else
            self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
        end
    end

    def move_piece!(color, start_pos, end_pos)

    end

    def valid_pos?(pos)
        
    end

end
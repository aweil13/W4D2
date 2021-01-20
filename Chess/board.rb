require_relative "piece.rb"

class Board

    BACK_ROW = [ 
        Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook
    ].freeze
    
    def populate
        @board.map_with_index do |row, idx|
            if idx == 0
                row.map_with_index { |pos, j|  BACK_ROW[j].new(:black, self, [idx,j]) }
            elsif idx == 1
                row.map_with_index { |pos, j|  Pawn.new(:black, self, [idx,j]) }
            elsif idx == 6
                row.map_with_index { |pos, j|  Pawn.new(:white, self, [idx,j]) }
            elsif idx == 7 
                row.map_with_index { |pos, j|  BACK_ROW[j].new(:white, self, [idx,j]) }
            end
        end
    end

    def initialize
        @board = Array.new(8) { Array.new(8, NullPiece.instance) }
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
            raise StartPositionError.new('invalid start position')   
        elsif !valid_moves.include?(end_pos)
            raise EndPositionError.new('invalid end position')
        else
            self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
        end
    end

    def move_piece!(color, start_pos, end_pos)

    end

    def valid_pos?(pos)
        row, col = pos
        return true if (0..7).include?(row) and (0..7).include?(col) 
        false
    end

end
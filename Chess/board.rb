require_relative "piece.rb"

class Board
    
    def populate
        @board.map_with_index do |row, idx|
            if !(2..5).include?(idx)
                row.map { |pos| pos = Piece.new }
            end
        end
    end

    def initialize
        @board = Array.new(8) { Array.new(8) }
    end

    

end
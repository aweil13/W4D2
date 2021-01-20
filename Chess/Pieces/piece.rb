class Piece
    attr_reader :pos

    def initialize(color, board, pos)
        @board = Board.new
        @color = self.symbol # question
        @pos = pos # array
    end

    def to_s
        "#{self.symbol}"
    end

    def empty?
        is_a?(NullPiece) 
    end

    def pos=(val)
        @pos = val # will change current_pos to val_arr
    end

    def valid_moves # return an array
        
    end

    def symbol
    end

    private

    def move_into_check?(end_pos)

    end

end
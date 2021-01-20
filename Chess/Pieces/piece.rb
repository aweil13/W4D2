class Piece
    attr_reader :pos, :color, :board

    def initialize(color, board, pos)
        @board = board
        @color = color # question
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
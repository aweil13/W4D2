module Slideable 
    def horizontal_dirs
    end

    def diagonal_dirs
    end

    def moves
    end

    private
    
    def move_dirs
    end

    def grow_unblocked_moves_in_dir(dx, dy)
    end
end


class Rook < Piece # horizontal
    include Slideable
    def initialize
        @rook = :R
    end
end


class Queen < Piece# both
    include Slideable
    def initialize
        @queen = :Q
    end
end


class Bishop < Piece # diagonal
    include Slideable
    def initialize
        @bishop = :B
    end
end



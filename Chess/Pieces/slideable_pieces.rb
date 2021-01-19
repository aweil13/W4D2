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


class Rook # horizontal
    def initialize
        @rook = :R
    end
end


class Queen # both
    def initialize
        @queen = :Q
    end
end


class Bishop # diagonal
    def initialize
        @bishop = :B
    end
end



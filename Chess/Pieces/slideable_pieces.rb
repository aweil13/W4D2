module Slideable 

    # HORIZONTAL_DIRS stores an array of horizontal directions
        # when a piece moves in a given direction, its row and/or its column should increment by some value
        # ex: A piece starts at position [1, 2] and it moves horizontally to the right
        # its position changes to [1,3]
        # the row increases by 0 and the column increases by 1
    HORIZONTAL_DIRS = [
        [0, -1], # left
        [0, 1], # right
        [-1, 0], # up (vertical)
        [1, 0]  # down (vertical)
    ].freeze # wont allow this mutable array to be mutated

    # DIAGONAL_DIRS stores an array of diagonal directions
    DIAGONAL_DIRS = [
        [-1, -1], # up + left
        [-1, 1], # up + right
        [1, -1], # down + left
        [1, 1]  # down + right
    ].freeze


    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end


    # should return an array of places a Piece can move to
    def moves
        possible_moves = []

        move_dirs.each do |dir|
            possible_moves.concat(grow_unblocked_moves_in_dir(dir[0], dir[1]))   
        end



        possible_moves                                 # create array to collect moves
        
                                        # iterate over each of the directions in which a slideable piece can move
                                        # use the Piece subclass' `#move_dirs` method to get this info


                                        # return the final array of moves (containing all possible moves in all directions)
    end


    private

    def move_dirs
        # subclass implements this
        raise NotImplementedError # this only executes if 
    end


    # this helper method is only responsible for collecting all moves in a given direction
    # the given direction is represented by two args, the combination of a dx and dy
    def grow_unblocked_moves_in_dir(dx, dy)    #(0,-1)
        next_pos = [ [self.pos[0] + dx, self.pos[1] + dy] ]   
        until !valid_pos?(next_pos[-1])
            following_pos = [next_pos[-1][0]+ dx, next_pos[-1][1] + dy] 
            next_tile = self.board[following_pos]
            if next_tile.is_a?(NullPiece)
                next_pos < following_pos
            end
          next_pos.pop if !valid_pos?(next_pos[-1])
        end  
        next_pos
    end  
        
              
    
end


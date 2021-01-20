module Slideable 
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
          currentx = self.pos[0]
          currenty = self.pos[1]

             move_dirs.each do |dir|
                grow_unblocked_moves_in_dir(dir[])   



          moves_arr = grow_unblocked_moves_in_dir(dx, dy)                                  # create array to collect moves
          
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
        def grow_unblocked_moves_in_dir(dx, dy)
                       
            horizontal_moves = [[dx, dy]]
              HORIZONTAL_DIRS.each do |pos| 
                current_pos = [dx, dy]
                row, col = pos 
                    until !valid_pos?(horizontal_moves[-1])
                        current_pos = [dx + row, dy + col]
                        next_tile = self.board[current_pos]
                        if next_tile.is_a?(NullPiece)
                        horizontal_moves << current_pos
                        else
                            if 
                    end
                horizontal_moves.pop if !valid_pos?(horizontal_moves[-1])
                end
             end           
             
             diagonal_moves = [[dx, dy]]
              DIAGONAL_DIRS.each do |pos| 
                current_pos = [dx, dy]
                row, col = pos 
                    until !valid_pos?(diagonal_moves[-1])
                        current_pos = [dx + row, dy + col]
                        diagonal_moves << current_pos
                    end
                diagonal_moves.pop if !valid_pos?(diagonal_moves[-1])
                end
             end                  
            
            if is.a?(Queen)
                return horizontal_moves.concat(diagonal_moves)
            elsif is.a?(Bishop)
                return diagonal_moves
            else
                horizontal_moves
            end
                                        # get the piece's current row and current column
                                    
                                        # in a loop:
                                            # continually increment the piece's current row and current column to generate a new position
                                            # ex. [3,3] => move right, new_x = 3, new_y = 4
                                            # stop looping if the new position is invalid (not on the board); the piece can't move in this direction
                                            # if the new position is empty, the piece can move here, so add the new position to the moves array
                                            # if the new position is occupied with a piece of the opposite color, the piece can move here (to capture the opposing piece), so add the new position to the moves array
                                            # but, the piece cannot continue to move past this piece, so stop looping
                                            # if the new position is occupied with a piece of the same color, stop looping
                                    
                                        # return the final moves array
        end
      end


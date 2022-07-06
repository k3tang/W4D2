
# require_relative "board.rb"



class Piece 

    attr_accessor :symbol

    def initialize(color, position)
        @color = color
        @position = position
        # @board = board
        @symbol = symbol
    end 


    def to_s
       self.symbol 
    end 


    # def empty?
    #     self.position == NullPiece.instance
    # end 


    def valid_moves #needs to come from child, should return an array of valid moves 
    #    start_pos = self.position
    #    if board.end_pos.is_a?(NullPiece)
    end 


    def pos=(val)
        self.position = val
    end 


    def move_into_check?(end_pos)
    end 

 

end 
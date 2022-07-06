class Board
   include Enumerable
   attr_reader :current_board
   attr_accessor :board 
    def initialize
       @board = Array.new(8){Array.new(8)}
       @current_board = @board
    end

    def populate
        @board[1].each_with_index {|_,i| @board[1,i] = Pawn.new(:W,[1,i])}
        @board[6].each_with_index {|_,i| @board[6,i] = Pawn.new(:B,[6,i])}

        @board[2..5].each_with_index do |row,i| 
                row.each_with_index {|row,idx| @board[i,idx] = NullPiece.new(:X,[i,idx])}
        end
        
        # color = "white"
        # case color
        # when "white"
        #     sym = :W
           @board[0][0] = Rook.new(:W,[0,0])
           @board[0][1] = Knight.new(:W,[0,1])
           @board[0][2] = Bishop.new(:W,[0,2])
           @board[0][3] = King.new(:W,[0,3])
           @board[0][4] = Qween.new(:W,[0,4])
           @board[0][5] = Bishop.new(:W,[0,5])
           @board[0][6] = Knight.new(:W,[0,6])
            @board[0][7] = Rook.new(:W,[0,7])

            @board[7][0] = Rook.new(:B,[7,0])
           @board[7][1] = Knight.new(:B,[7,1])
           @board[7][2] = Bishop.new(:B,[7,2])
           @board[7][3] = King.new(:B,[7,3])
           @board[7][4] = Qween.new(:B,[7,4])
           @board[7][5] = Bishop.new(:B,[7,5])
           @board[7][6] = Knight.new(:B,[7,6])
            @board[7][7] = Rook.new(:B,[7,7])
            
    end

    def [](pos)
        
        @board[pos[0]][pos[-1]]
    end

    def []=(pos,val)
        @board[pos] = val
    end

    def move_piece(start_pos,end_pos)

        unless valid_move?(end_pos) && !@board[start_pos].is_a?(NullPiece)
            raise "Uh oh, you can't move there"
        end

        piece = @board[start_pos]
       @board[end_pos] = piece
       @board[start_pos] = NullPiece.new(:X,start_pos)

    end

  
 
end 

b = Board.new
b.each {|row| puts row}



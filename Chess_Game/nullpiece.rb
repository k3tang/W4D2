require_relative "piece.rb"
require "Singleton"

class NullPiece < Piece
    include Singleton

    def initialize
        super(nil,nil) 
    end

end 
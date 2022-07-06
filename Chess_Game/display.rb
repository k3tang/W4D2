require_relative "board.rb"

class Display
    require Enumerable
    def initialize
        @board = Board.new.populate
        @cursor = cursor # should be cursor.new?
    end

    # def render
    #     board.each do |row|
    #         print "\n"
    #         row.each { |square|  print square }
    #     end

    # end

    
end 
test = Display.new.render
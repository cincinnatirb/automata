require "spec_helper"

describe Board do
  Given(:board) { Board.new }
  Then { board.size == 100 }
end

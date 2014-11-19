require "spec_helper"

describe Board do
  Given(:board) { Board.new }
  Then { board.size == 100 }
  Then { board.draw == Array.new(10) {' '*10}.join("\n")+"\n" }

  context "specified board" do
    Given(:board) { Board.new(rows, cols) }

    context "small board" do
      Given(:rows) { 4 }
      Given(:cols) { 6 }
      Then { board.size == 24 }
      Then { board.draw == "#{' '*cols}\n"*rows }
    end

    context "one brood" do
      Given(:rows) { 4 }
      Given(:cols) { 4 }
      Given(:brood) { 'o' }
      Given(:x) { 2 }
      Given(:y) { 3 }
      When { board[x, y] = brood }
      Then { board[x, y] == brood }
      Then { board.draw == [ ' '*cols,' '*cols,' '*cols, '  o ' ].join("\n")+"\n" }
    end
  end
end

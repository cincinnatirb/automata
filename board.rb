class Board
  def initialize(rows=10, cols=rows)
    @rows = rows
    @cols = cols
    @grid = blank_board
    @brood = " "
  end

  def size
    @rows * @cols
  end

  def draw
    result = ""
    @rows.times do |row|
      @cols.times do |col|
        result << self[col, row]
      end
      result << "\n"
    end
    result
  end

  def []=(x, y, brood)
    @grid[y][x] = brood
  end

  def [](x,y)
    @grid[y][x]
  end

  private def blank_board
    Array.new(@rows) { Array.new(@cols) {" "} }
  end
end

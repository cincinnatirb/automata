class Board
  def initialize(rows=10, cols=rows)
    @rows = rows
    @cols = cols
    @grid = blank_grid
  end

  def size
    @rows * @cols
  end

  def draw
    @grid.map do | row |
      row.join + "\n"
    end.join
  end

  def []=(x, y, brood)
    @grid[y][x] = brood
  end

  def [](x,y)
    @grid[y][x]
  end

  private def blank_grid
    Array.new(@rows) { Array.new(@cols) {" "} }
  end
end

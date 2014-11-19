class Board
  def initialize(rows=10, cols=rows, art=nil)
    @rows = rows
    @cols = cols
    @grid = blank_grid
    if art
      art.each_line.with_index do |line, y|
        line.chomp.each_char.with_index do |char, x|
          self[x, y] = char unless char == '.'
        end
      end
    end
  end

  def get_neighbors(x,y)
    [self[x, y - 1],
     self[x + 1, y],
     self[x, y + 1],
     self[x - 1, y]]
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
    @grid[y][x] if (0..@cols).include?(x) && (0..@rows).include?(y)
  end

  private def blank_grid
    Array.new(@rows) { Array.new(@cols) {" "} }
  end
end

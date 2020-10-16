
class Life
  def initialize(size=30, density=10, game_len=100, sym_dead=' ', sym_life='x', life=[])
    @density = density
    @game_len = game_len
    @d = sym_dead
    @l = sym_life
    @life = life
    if @life == []
      @size = size
      make_life
    else
      @size = @life.length
    end
  end

  def make_life
    @size.times do
      line = []
      @size.times do
        rand(100) < @density ? line.push(@l) : line.push(@d)
      end
      @life.push(line)
    end
  end

  def game_on
    while @game_len != 0 do
      system 'clear'
      print_life
      @life = evolve
      @game_len -= 1
      sleep(0.1)
    end
  end

  def evolve
    new_life = Array.new(@size) { Array.new(@size) }

    @life.each_with_index do |line, line_idx|
      line.each_with_index do |cell, cell_idx|
        count = count_life(line_idx, cell_idx)
        if count == 2 && @life[line_idx][cell_idx] == @l
          new_life[line_idx][cell_idx] = @l
        elsif count == 3
          new_life[line_idx][cell_idx] = @l
        else
          new_life[line_idx][cell_idx] = @d
        end
      end
    end
    new_life
  end

  def count_life(line_idx, cell_idx)
    alive =
      @life[edge_idx(line_idx, "n")][edge_idx(cell_idx, "w")] +
      @life[edge_idx(line_idx, "n")][cell_idx] +
      @life[edge_idx(line_idx, "n")][edge_idx(cell_idx, "e")] +
      @life[line_idx][edge_idx(cell_idx, "w")] +
      @life[line_idx][edge_idx(cell_idx, "e")] +
      @life[edge_idx(line_idx, "s")][edge_idx(cell_idx, "w")] +
      @life[edge_idx(line_idx, "s")][cell_idx] +
      @life[edge_idx(line_idx, "s")][edge_idx(cell_idx, "e")]
    alive.count(@l)
  end

  def edge_idx(idx, dir)
    if dir == "n" || dir == "w"
      return @size - 1 if idx == 0
      idx -= 1
    elsif dir == "s" || dir == "e"
      return 0 if idx == @size - 1
      idx += 1
    end
    idx
  end

  def print_life
    @life.each do |line|
      print line.join(" ")
      puts
    end
  end

end





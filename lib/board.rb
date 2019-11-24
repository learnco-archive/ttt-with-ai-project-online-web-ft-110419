class Board
  attr_accessor :cells

  def initialize
    self.reset!
  end

  def reset!
    self.cells = Array.new(9, " ")
  end

  def display
    binding.pry
    puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} "
    puts "-----------"
    puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
    puts "-----------"
    puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
  end

  def position(user_input)
    self.cells[user_input.to_i - 1]
  end

  def full?
    self.cells.include?(" ") ? false : true
  end

  def turn_count
    self.cells.select { |cell| cell != " "}.length
  end

  def taken?(index)
    self.cells[index.to_i - 1] == "X" || self.cells[index.to_i - 1] == "O" ? true : false
  end

  def valid_move?(user_input)
    user_input.to_i.between?(1, 9) && !self.taken?(user_input)
  end

  def update
    # updates the cells in the board with the player token according to the input (FAILED - 1)
  end
end
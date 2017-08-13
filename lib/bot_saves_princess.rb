# frozen_string_literal: true

require_relative 'grid.rb'

# https://www.hackerrank.com/challenges/saveprincess
# Princess Peach is trapped in one of the four corners of a square grid.
# You are in the center of the grid and can move one step at a time in any
# of the four directions.
class BotSavesPrincess < Grid
  attr_reader :n, :grid, :bot_xy

  def initialize(n, grid)
    @n    = n.to_i
    @grid = grid
    @bot_xy = [(@n - 1) / 2, (@n - 1) / 2]
  end

  def display_path_to_princess
    moves = []

    rows, cols = position_difference

    moves << (rows.negative? ? (['UP'] * rows.abs) : (['DOWN'] * rows))
    moves << (cols.negative? ? (['LEFT'] * cols.abs) : (['RIGHT'] * cols))

    moves.flatten.each { |move| puts move }
  end
end

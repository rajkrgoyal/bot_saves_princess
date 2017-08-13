# frozen_string_literal: true

require_relative 'grid.rb'

# https://www.hackerrank.com/challenges/saveprincess2
# It gives Bot's next move to rescue princess.
class BotNextMove < Grid
  attr_reader :n, :bot_xy, :grid

  def initialize(n, r, c, grid)
    @n    = n
    @grid = grid
    # Column would be in x coordinates and row would be in y coordinates.
    @bot_xy = [c.to_i, r.to_i]
  end

  def next_move
    rows, cols = position_difference
    if !rows.zero?
      p rows.negative? ? 'UP' : 'DOWN'
    elsif !cols.zero?
      p cols.negative? ? 'LEFT' : 'RIGHT'
    end
  end
end

# frozen_string_literal: true

# Super class to solve following both problem:
# https://www.hackerrank.com/challenges/saveprincess
# https://www.hackerrank.com/challenges/saveprincess2
class Grid
  # 1. Find princess coordinates
  # 2. Calculate differences in coordinates for bot and princess.
  # 3. This difference further decide about moves.
  def position_difference
    princess_xy = []
    grid.each_with_index do |line, index|
      princess_xy = [line.chars.index('p'), index] if line.include?('p')
    end
    rows_distance = princess_xy[1] - bot_xy[1]
    cols_distance = princess_xy[0] - bot_xy[0]
    [rows_distance, cols_distance]
  end
end

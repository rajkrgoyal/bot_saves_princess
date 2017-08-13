# frozen_string_literal: true

require_relative '../lib/bot_saves_princess.rb'
require_relative '../lib/bot_next_move.rb'

describe Grid do
  context 'Testing position_difference in Grid class' do
    it "should say '[2, 1]' when we call the position_difference method" do
      grid = ['----', '-m--', '----', '--p-']
      bot_saves_princess = BotSavesPrincess.new('4', grid)
      expect([2, 1]).to eq(bot_saves_princess.position_difference)
    end

    it "should say '[-1, 0]' when we call the position_difference method" do
      grid = ['-p-', '-m-', '---']
      bot_saves_princess = BotNextMove.new('3', '1', '1', grid)
      # Expect {row_difference, column_difference}
      expect([-1, 0]).to eq(bot_saves_princess.position_difference)
    end
  end
end

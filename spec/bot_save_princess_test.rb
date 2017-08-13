# frozen_string_literal: true

require_relative '../lib/bot_saves_princess.rb'

describe BotSavesPrincess do
  context 'Testing display_path_to_princess in Bot class' do
    it "should say 'UP
                    LEFT' when we call the display_path_to_princess method" do
      board = ['p--', '-m-', '---']
      bot = BotSavesPrincess.new('3', board)
      expected_path = %w[UP LEFT]
      expect(bot.display_path_to_princess).to eq expected_path
    end

    it "should say 'DOWN
                    DOWN
                    RIGHT
                    RIGHT' for display_path_to_princess method" do
      board = ['----', '-m--', '----', '---p']
      bot = BotSavesPrincess.new('4', board)
      direction = bot.display_path_to_princess
      expected_path = %w[DOWN DOWN RIGHT RIGHT]
      expect(direction).to eq expected_path
    end
  end
end

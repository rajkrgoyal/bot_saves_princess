# frozen_string_literal: true

require_relative '../lib/bot_saves_princess.rb'

describe BotSavesPrincess do
  context 'Testing display_path_to_princess in Bot class' do
    it "should say 'UP
                    LEFT' when we call the display_path_to_princess method" do
      board = ['p--', '-m-', '---']
      bot_saves_princess = BotSavesPrincess.new('3', board)
      expected_path = %w[UP LEFT]
      expect(bot_saves_princess.display_path_to_princess).to eq expected_path
    end

    it "should say 'DOWN
                    DOWN
                    RIGHT
                    RIGHT' for display_path_to_princess method" do
      board = ['----', '-m--', '----', '---p']
      bot_saves_princess = BotSavesPrincess.new('4', board)
      direction = bot_saves_princess.display_path_to_princess
      expected_path = %w[DOWN DOWN RIGHT RIGHT]
      expect(direction).to eq expected_path
    end
  end
end

describe BotSavesPrincess do
  context 'Testing display_path_to_princess in Bot class' do
    it "should say 'UP
                    UP
                    UP
                    RIGHT
                    RIGHT
                    RIGHT' for display_path_to_princess method" do
      grid = ['------p',
              '-------',
              '-------',
              '---m---',
              '-------',
              '-------',
              '-------']
      bot_saves_princess = BotSavesPrincess.new('7', grid)
      direction = bot_saves_princess.display_path_to_princess
      expected_path = %w[UP UP UP RIGHT RIGHT RIGHT]
      expect(direction).to eq expected_path
    end
  end
end

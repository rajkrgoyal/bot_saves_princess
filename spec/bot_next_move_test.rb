# frozen_string_literal: true

require_relative '../lib/bot_next_move.rb'

describe BotNextMove do
  context 'Testing next_move in BotNextMove class' do
    it "should say 'UP' when we call the next_move method" do
      grid = ['-p-', '-m-', '---']
      bot_next_move = BotNextMove.new('3', '1', '1', grid)
      expect(bot_next_move.next_move).to eq 'UP'
    end

    it "should say '[-1, 0]' when we call the position_difference method" do
      grid = ['-p-', '-m-', '---']
      bot_next_move = BotNextMove.new('3', '1', '1', grid)
      # Expect {row_difference, column_difference}
      expect([-1, 0]).to eq(bot_next_move.position_difference)
    end
  end

  context 'Testing next_move in BotNextMove class' do
    it "should say 'DOWN' when we call the next_move method" do
      grid = ['----', '-m--', '----', '--p-']
      bot_next_move = BotNextMove.new('4', '1', '1', grid)
      direction = bot_next_move.next_move
      expect(direction).to eq 'DOWN'
    end
  end
end

describe BotNextMove do
  context 'Testing next_move in BotNextMove class' do
    it "should say 'RIGHT' when we call the next_move method" do
      grid = ['-----', '-----', '---mp', '-----']
      bot_next_move = BotNextMove.new('5', '2', '3', grid)
      direction = bot_next_move.next_move
      expect(direction).to eq 'RIGHT'
    end

    it "should say 'LEFT' when we call the next_move method" do
      grid = ['-----', '-----', '-p--m', '-----']
      bot_next_move = BotNextMove.new('5', '2', '4', grid)
      direction = bot_next_move.next_move
      expect(direction).to eq 'LEFT'
    end
  end
end

# frozen_string_literal: true

module Minesweeper
  # Minesweeper::CLI
  class CLI
    def initialize
      @game = Game.new
    end

    def execute
      game.start
    end

    private

    attr_reader :game
  end
end
